defmodule Onicn.Translation do
  translations =
    :onicn
    |> :code.priv_dir()
    |> Path.join("data/translation.yaml")
    |> YamlElixir.read_from_file!()
    |> Enum.map(fn {key, value} -> {String.to_atom(key), value} end)

  def get(key) do
    Keyword.get(unquote(translations), key)
  end
end
