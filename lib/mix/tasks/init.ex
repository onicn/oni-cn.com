require Logger

defmodule Mix.Tasks.Onicn.Init do
  use Mix.Task

  def run(_args) do
    do_init("building")
    do_init("food")
    do_init("plant")
  end

  def do_init(category) do
    image_map =
      :onicn
      |> :code.priv_dir()
      |> Path.join("data/#{category}.yaml")
      |> YamlElixir.read_from_file!()
      |> Enum.filter(fn
        %{"desc" => _} -> true
        _ when category != "building" -> true
        _ -> false
      end)
      |> Map.new(fn %{"name" => name, "image_name" => image_name} -> {image_name, name} end)

    :onicn
    |> :code.priv_dir()
    |> Path.join("/img/#{category}s")
    |> File.ls!()
    |> Enum.map(fn filename ->
      image_name = Path.basename(filename, ".png")
      Map.get(image_map, image_name)
    end)
    |> Enum.reject(&is_nil/1)
    |> Enum.map(fn name ->
      module_name = Macro.camelize(name)

      module_path =
        __ENV__.file
        |> Path.dirname()
        |> Path.join("../../onicn/#{category}s/#{name}.ex")

      if not File.exists?(module_path) do
        content = """
        defmodule Onicn.#{Macro.camelize(category)}s.#{module_name} do
          use Onicn.Categories.#{Macro.camelize(category)}
        end
        """

        File.write!(module_path, content)
        Logger.info("init #{category}: #{name}")
      end
    end)
  end
end
