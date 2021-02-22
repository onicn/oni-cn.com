alias Onicn.Categories.{Solid, Liquid, Gas, Building}

defmodule Onicn.Item do
  def replace_link(string, escape) do
    index = index()

    hashed_string =
      Enum.reduce(index, string, fn {cn_name, hashed_name, _}, acc ->
        String.replace(acc, cn_name, hashed_name)
      end)

    index
    |> Enum.reduce(hashed_string, fn {name, hashed_name, link}, acc ->
      if name in escape do
        String.replace(acc, hashed_name, name)
      else
        String.replace(acc, hashed_name, link)
      end
    end)
  end

  defp index do
    [
      Solid.__element_modules__(),
      Liquid.__element_modules__(),
      Gas.__element_modules__(),
      Building.__building_modules__()
    ]
    |> Enum.concat()
    |> Enum.map(fn module ->
      cn_name = module.__attributes__[:cn_name]
      {cn_name, hash(cn_name), module.output(:link_name_icon)}
    end)
    |> Enum.sort_by(fn {cn_name, _, _} -> String.length(cn_name) end, :desc)
  end

  defp hash(string) do
    :md5 |> :crypto.hash(string) |> Base.encode16()
  end
end
