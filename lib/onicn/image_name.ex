defmodule Onicn.ImageName do
  image_names =
    :onicn
    |> :code.priv_dir()
    |> Path.join("data/image_name.yaml")
    |> YamlElixir.read_from_file!()
    |> Enum.map(fn
      %{"name" => name, "image_name" => image_name} -> {name, image_name}
      _ -> nil
    end)
    |> Enum.reject(&is_nil/1)
    |> Map.new()
    |> Macro.escape()

  def get(key) do
    Map.get(unquote(image_names), key, key)
  end
end
