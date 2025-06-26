defmodule Onicn.Translation do
  @translation_file :onicn
                    |> :code.priv_dir()
                    |> Path.join("data/translation.yaml")

  @external_resource @translation_file

  translations =
    @translation_file
    |> YamlElixir.read_from_file!()
    |> Macro.escape()

  def get(key) when is_binary(key) do
    Map.get(unquote(translations), key)
  end

  def get(key) when is_atom(key) do
    key |> to_string() |> get()
  end

  def get!(key) do
    case get(key) do
      nil -> raise "No translation for #{key}"
      other -> other
    end
  end
end
