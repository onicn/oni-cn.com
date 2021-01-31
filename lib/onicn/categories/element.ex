defmodule Onicn.Categories.Element do
  @available_fields %{
    category: "资源种类",
    low_temp: {"低温相变温度", "°C"},
    low_temp_transition_target: "低温相变产物",
    high_temp: {"高温相变温度", "°C"},
    high_temp_transition_target: "高温相变产物",
    specific_heat_capacity: {"比热容", "(DTU/g)/°C"},
    thermal_conductivity: {"导热率", "(DTU/(m*s))/°C"},
    hardness: "硬度",
    mass_per_tile: {"每格质量", "kg"},
    molar_mass: {"摩尔质量", "g/mol"}
  }

  def output(:html_attributes, element) do
    attributes = element.__attributes__()

    name = element |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()
    cn_name = attributes[:cn_name]
    img = "./imgs/elements/#{name}.png"

    data =
      attributes
      |> Enum.filter(fn {field, _value} -> Map.has_key?(@available_fields, field) end)
      |> Enum.map(fn
        {field, {e, percentage}} when field in [:low_temp_transition_target, :high_temp_transition_target] ->
           {@available_fields[field], "#{e.output(:link_name_icon)} (#{Float.floor(percentage * 100, 2)}%)"}

        {field, e} when field in [:low_temp_transition_target, :high_temp_transition_target] ->
           {@available_fields[field], e.output(:link_name_icon)}

        {field, value} ->
          case @available_fields[field] do
            {name, unit} ->
              {name, "#{value} #{unit}"}
            name ->
              {name, value}
          end
    end)

    :onicn
    |> :code.priv_dir()
    |> Path.join("templates/attributes.eex")
    |> EEx.eval_file(name: cn_name, img: img, data: data)
  end
end
