defmodule Onicn.Translation do
  translations =
    :onicn
    |> :code.priv_dir()
    |> Path.join("data/translation.yaml")
    |> YamlElixir.read_from_file!()
    |> Macro.escape()

  def get(key) when is_binary(key) do
    Map.fetch!(unquote(translations), key)
  end

  def get(key) when is_atom(key) do
    key |> to_string() |> get()
  end
end
