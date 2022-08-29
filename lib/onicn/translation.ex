defmodule Onicn.Translation do
  translations =
    :onicn
    |> :code.priv_dir()
    |> Path.join("data/translation.yaml")
    |> YamlElixir.read_from_file!()
    |> Map.new(fn {key, value} -> {String.to_atom(key), value} end)
    |> Macro.escape()

  def get(key) do
    Map.fetch!(unquote(translations), key)
  end
end
