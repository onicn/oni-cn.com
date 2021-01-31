defmodule Onicn.Categories.Element do
  @available_fields [
    {:category, "资源种类"},
    {:low_temp, "低温相变温度", "°C"},
    {:low_temp_transition_target, "低温相变产物"},
    {:high_temp, "高温相变温度", "°C"},
    {:high_temp_transition_target, "高温相变产物"},
    {:specific_heat_capacity, "比热容", "(DTU/g)/°C"},
    {:thermal_conductivity, "导热率", "(DTU/(m*s))/°C"},
    {:hardness, "硬度"},
    {:mass_per_tile, "每格质量", "kg"},
    {:density, "密度", "g/mol"}
  ]

  def output(:html_attributes, element) do
    attributes = element.__attributes__()
    category_module = attributes[:nav];
    fields = Enum.filter(@available_fields, fn field -> elem(field, 0) in category_module.__fields__ end)
    name = element |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()
    cn_name = attributes[:cn_name]
    img = "./imgs/elements/#{name}.png"
    data = Enum.map(fields, fn
      {field, name} when field in [:low_temp_transition_target, :high_temp_transition_target] ->
        case attributes[field] do
          {element, percentage} ->
            {name, "#{element.output(:link_name_icon)} (#{Float.floor(percentage * 100, 2)}%)"}
          element ->
            {name, element.output(:link_name_icon)}
        end
      {field, name, unit} ->
        {name, "#{attributes[field]} #{unit}"}
      {field, name} ->
        {name, attributes[field]}
    end)

    :onicn
    |> :code.priv_dir()
    |> Path.join("templates/attributes.eex")
    |> EEx.eval_file(name: cn_name, img: img, data: data)
  end
end
