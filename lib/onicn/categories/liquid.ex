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

  defmacro __using__(attributes) do
    element_id = __CALLER__.module |> to_string() |> String.split(".") |> List.last()

    attributes =
      @elements
      |> Enum.find(fn e -> e["elementId"] === element_id end)
      |> Onicn.Categories.Element.parse(@fields)
      |> Keyword.merge(attributes)
      |> Keyword.put(:nav, __MODULE__)

    quote do
      def __attributes__ do
        unquote(attributes)
      end

      def output(:link_name_icon) do
        ~s|<a href="">unquote(attributes[:cn_name])</a>|
      end

      def output(:html_attributes) do
        Onicn.Categories.Element.output(:html_attributes, __MODULE__)
      end
    end
  end

  def output(:json_elements) do
    @elements
    |> Enum.filter(fn %{"elementId" => element_id} ->
      module = Module.concat(["Onicn.Elements", element_id])
      function_exported?(module, :__attributes__, 0) && module.__attributes__[:nav] === __MODULE__
    end)
    |> Enum.map(fn %{"elementId" => element_id} ->
      ["Onicn.Elements", element_id]
      |> Module.concat()
      |> apply(:__attributes__, [])
      |> IO.inspect()
      |> Enum.filter(fn {field, _} -> field in [:cn_name | @fields] end)
      |> Onicn.Categories.Element.attributes_to_json()
    end)
  end


  def __fields__, do: @fields
end
