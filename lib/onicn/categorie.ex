defmodule Onicn.Category do
  @category_modules [
    Onicn.Categories.Solid,
    Onicn.Categories.Liquid,
    Onicn.Categories.Gas
  ]

  def generate_json do
    Enum.each(@category_modules, fn module ->
      name = module |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()
      data = module.output(:json_elements)

      :onicn
      |> :code.priv_dir()
      |> Path.join("dist/#{name}.json")
      |> File.write!(Jason.encode!(%{code: 0, count: length(data), data: data}))

      :ok
    end)
  end

  def generate_pages do
    temp_path = :onicn |> :code.priv_dir() |> Path.join("templates")

    Enum.each(@category_modules, fn module ->
      name = module |> to_string() |> String.split(".") |> List.last() |> Macro.underscore()
      %{container: container, script: script} = module.output(:html_table)

      nav =
        temp_path
        |> Path.join("nav.eex")
        |> EEx.eval_file(nav: name)

      page =
        temp_path
        |> Path.join("index.eex")
        |> EEx.eval_file(nav: nav, container: container, script: script)

      page_path =
        :onicn
        |> :code.priv_dir()
        |> Path.join("dist")
        |> Path.join("/#{name}/")

      File.mkdir_p!(page_path)
      File.write!(Path.join(page_path, "index.html"), page)

      :ok
    end)
  end
end
