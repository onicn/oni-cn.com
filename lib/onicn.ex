defmodule Onicn do
  def generate_all do
    Onicn.Categories.Solid.generate_pages()
    Onicn.Categories.Liquid.generate_pages()
    Onicn.Categories.Gas.generate_pages()
    Onicn.Categories.Building.generate_pages()
    Onicn.Category.generate_json()
    Onicn.Category.generate_pages()
    generate_home()
  end

  def generate_home do
    temp_path =
      :onicn
      |> :code.priv_dir()
      |> Path.join("templates")

    nav =
      temp_path
      |> Path.join("nav.eex")
      |> EEx.eval_file(nav: "home")

    container =
      temp_path
      |> Path.join("home.eex")
      |> EEx.eval_file([])

    script = ~s|layui.use('element', function() {});|

    page =
      temp_path
      |> Path.join("index.eex")
      |> EEx.eval_file(nav: nav, container: container, script: script)

    page_path =
      :onicn
      |> :code.priv_dir()
      |> Path.join("dist")

    File.mkdir_p!(page_path)
    File.write!(Path.join(page_path, "index.html"), page)
  end
end
