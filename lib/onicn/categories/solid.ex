defmodule Onicn.Categories.Solid do
  @fields [
    :category,
    :high_temp,
    :high_temp_transition_target,
    :specific_heat_capacity,
    :thermal_conductivity,
    :hardness
  ]

  defmacro __using__(attributes) do
    attributes = Keyword.put(attributes, :nav, __MODULE__)
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
