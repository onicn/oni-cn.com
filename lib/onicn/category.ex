defmodule Onicn.Category do
  @category_modules [
    Onicn.Categories.Solid,
    Onicn.Categories.Liquid,
    Onicn.Categories.Gas,
    Onicn.Categories.Building,
    Onicn.Categories.Critter,
    Onicn.Categories.Plant,
    Onicn.Categories.Food,
    Onicn.Categories.Geyser,
    Onicn.Categories.Other
  ]

  def generate_json do
    @category_modules
    |> List.delete(Onicn.Categories.Building)
    |> List.delete(Onicn.Categories.Other)
    |> Enum.each(fn module ->
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

    @category_modules
    |> List.delete(Onicn.Categories.Other)
    |> Enum.each(fn module ->
      name = module.__name__()
      cn_name = module.__cn_name__()
      %{container: container, script: script} = module.output(:html_body)

      nav =
        temp_path
        |> Path.join("nav.eex")
        |> EEx.eval_file(nav: name)

      footer =
        temp_path
        |> Path.join("footer.eex")
        |> EEx.eval_file(edit_link: nil)

      page =
        temp_path
        |> Path.join("index.eex")
        |> EEx.eval_file(
          title: cn_name,
          nav: nav,
          container: container,
          footer: footer,
          script: script
        )

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
