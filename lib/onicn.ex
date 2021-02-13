defmodule Onicn do
  def generate_all do
    Onicn.Categories.Solid.generate_pages()
    Onicn.Categories.Liquid.generate_pages()
    Onicn.Categories.Gas.generate_pages()
    Onicn.Categories.Building.generate_pages()
    Onicn.Category.generate_json()
    Onicn.Category.generate_pages()
    generate_home()
    generate_sitemap()
    []
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
end
