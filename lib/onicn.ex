alias Onicn.{Elements, Buildings, Foods, Plants, Others}

defmodule Onicn do
  def generate_all do
    Onicn.Categories.Solid.generate_pages()
    Onicn.Categories.Liquid.generate_pages()
    Onicn.Categories.Gas.generate_pages()
    Onicn.Categories.Building.generate_pages()
    Onicn.Categories.Critter.generate_pages()
    Onicn.Categories.Plant.generate_pages()
    Onicn.Categories.Food.generate_pages()
    Onicn.Categories.Geyser.generate_pages()
    Onicn.Categories.Other.generate_pages()
    Onicn.Category.generate_json()
    Onicn.Category.generate_pages()
    generate_home()
    generate_sitemap()
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

    footer =
      temp_path
      |> Path.join("footer.eex")
      |> EEx.eval_file(edit_link: nil)

    script = ~s|layui.use('element', function() {});|

    page =
      temp_path
      |> Path.join("index.eex")
      |> EEx.eval_file(
        title: "首页",
        nav: nav,
        container: container,
        footer: footer,
        script: script
      )

    page_path =
      :onicn
      |> :code.priv_dir()
      |> Path.join("dist")

    File.mkdir_p!(page_path)
    File.write!(Path.join(page_path, "index.html"), page)
  end

  def generate_sitemap do
    dist_root =
      :onicn
      |> :code.priv_dir()
      |> Path.join("dist")

    content = do_generate([""], dist_root, [])

    dist_root
    |> Path.join("sitemap.txt")
    |> File.write!(content)
  end

  defp do_generate([], _, results) do
    results
    |> Enum.reverse()
    |> Enum.map(fn path -> Path.join(["https://oni-cn.com", path]) <> "/" end)
    |> Enum.join("\n")
  end

  defp do_generate([h | t], dist_root, results) do
    {:ok, files} =
      dist_root
      |> Path.join(h)
      |> File.ls()

    results =
      if "index.html" in files do
        [h | results]
      else
        results
      end

    new =
      files
      |> Enum.map(&Path.join(h, &1))
      |> Enum.filter(fn path ->
        dist_root |> Path.join(path) |> File.dir?()
      end)

    do_generate(t ++ new, dist_root, results)
  end

  def guess_name(str) do
    do_guess_blunt(str) || do_guess_critter(str)
  end

  defp do_guess_blunt(str) do
    [Elements, Buildings, Foods, Plants, Others]
    |> Enum.map(&Module.concat(&1, Macro.camelize(str)))
    |> Enum.find(&Code.ensure_loaded?/1)
  end

  defp do_guess_critter(str) do
    egg? = String.ends_with?(str, "_egg")
    name = String.trim_trailing(str, "_egg")

    Onicn.Categories.Critter.__species__()
    |> Enum.map(& &1.__critters__)
    |> Enum.concat()
    |> Enum.find(fn module -> module.__attributes__()[:name] == name end)
    |> case do
      nil -> nil
      module when egg? -> {:egg, module}
      module -> module
    end
  end
end
