defmodule Onicn.Item do
  hash = fn string -> :md5 |> :crypto.hash(string) |> Base.encode16() end

  @index [
    Onicn.Categories.Solid.__element_modules__,
    Onicn.Categories.Liquid.__element_modules__,
    Onicn.Categories.Gas.__element_modules__
  ]
  |> Enum.concat()
  |> Enum.map(fn module ->
    cn_name = module.__attributes__[:cn_name]
    {cn_name, hash.(cn_name), module.output(:link_name_icon)}
  end)
  |> Enum.sort_by(fn {cn_name, _, _} -> String.length(cn_name) end, :desc)

  def replace_link(string) do
    hashed_string =
      Enum.reduce(@index, string, fn {cn_name, hashed_name, _}, acc ->
        String.replace(acc, cn_name, hashed_name)
      end)
    Enum.reduce(@index, hashed_string, fn {_, hashed_name, link}, acc ->
      String.replace(acc, hashed_name, link)
    end)
  end

end
