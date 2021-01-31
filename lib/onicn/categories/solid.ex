defmodule Onicn.Categories.Solid do
  @fields [
    :category,
    :high_temp,
    :high_temp_transition_target,
    :specific_heat_capacity,
    :thermal_conductivity,
    :hardness,
    :molar_mass
  ]

  @elements :onicn
            |> :code.priv_dir()
            |> Path.join("data/solid.yaml")
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

      def output(:html_attributes) do
        Onicn.Categories.Element.output(:html_attributes, __MODULE__)
      end

      def output(:link_name_icon) do
        ~s|<a href="">unquote(attributes[:cn_name])</a>|
      end
    end
  end

  def __fields__, do: @fields
end
