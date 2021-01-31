defmodule Onicn.Categories.Liquid do
  @fields [
    :low_temp,
    :low_temp_transition_target,
    :high_temp,
    :high_temp_transition_target,
    :specific_heat_capacity,
    :thermal_conductivity,
    :mass_per_tile,
    :molar_mass
  ]

  @elements :onicn
    |> :code.priv_dir()
    |> Path.join("data/liquid.yaml")
    |> YamlElixir.read_from_file!()
    |> Map.get("elements")

  defp parse_element(element) do
    to_module = fn element_id -> Module.concat(["Onicn.Elements", element_id]) end

    Enum.concat([
      case element do
        %{
          "highTemp" => high_temp,
          "highTempTransitionTarget" => target_1,
          "highTempTransitionOreId" => target_2,
          "highTempTransitionOreMassConversion" => percentage_2
        } -> [
          high_temp: high_temp - 273.15,
          high_temp_transition_target: {to_module.(target_1), 1 - percentage_2},
          high_temp_transition_target: {to_module.(target_2), percentage_2}
        ]

        %{
          "highTemp" => high_temp,
          "highTempTransitionTarget" => target,
        } -> [
          high_temp: high_temp - 273.15,
          high_temp_transition_target: to_module.(target)
        ]

        _ -> []
      end,

      case element do
        %{
          "lowTemp" => low_temp,
          "lowTempTransitionTarget" => target_1,
          "lowTempTransitionOreId" => target_2,
          "lowTempTransitionOreMassConversion" => percentage_2
        } -> [
          low_temp: low_temp - 273.15,
          low_temp_transition_target: {to_module.(target_1), 1 - percentage_2},
          low_temp_transition_target: {to_module.(target_2), percentage_2}
        ]

        %{
          "lowTemp" => low_temp,
          "lowTempTransitionTarget" => target,
        } -> [
          low_temp: low_temp - 273.15,
          low_temp_transition_target: to_module.(target)
        ]

        _ -> []
      end,

      [
        specific_heat_capacity: element["specificHeatCapacity"],
        thermal_conductivity: element["thermalConductivity"],
        mass_per_tile: element["defaultMass"],
        molar_mass: element["molarMass"]
      ]
    ])
  end

  defmacro __using__(attributes) do
    element_id = __CALLER__.module |> to_string() |> String.split(".") |> List.last()
    attributes =
      @elements
      |> Enum.find(fn e -> e["elementId"] === element_id end)
      |> parse_element()
      |> Keyword.merge(attributes)
|> IO.inspect
      |> Keyword.put(:nav, __MODULE__)
|> IO.inspect

    quote do
      def __attributes__ do
        unquote(attributes)
      end

      def output(:html_attributes) do
        Onicn.Categories.Element.output(:html_attributes, __MODULE__)
      end
    end
  end

  def __fields__, do: @fields
end
