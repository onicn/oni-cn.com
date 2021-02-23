alias Onicn.Categories.{Solid, Liquid, Gas, Building, Critter}

defmodule Onicn.Item do
  @skiplist [
    "溺水",
    "被水淹没",
    "离水之鱼",
    "金属"
  ]

  def replace_link(string, escape) do
    index = index()

    hashed_string =
      Enum.reduce(index, string, fn {cn_name, hashed_name, _}, acc ->
        String.replace(acc, cn_name, hashed_name)
      end)

    index
    |> Enum.reduce(hashed_string, fn {name, hashed_name, link}, acc ->
      if name in (escape ++ @skiplist) do
        String.replace(acc, hashed_name, name)
      else
        String.replace(acc, hashed_name, link)
      end
    end)
  end

  defp index do
    skiplist = Enum.map(@skiplist, &{&1, hash(&1), ""})

    critters =
      Critter.__species__()
      |> Enum.map(& &1.__critters__)
      |> Enum.concat()
      |> Enum.map(fn module ->
        a = module.__attributes__()

        [
          {a[:cn_name], hash(a[:cn_name]), module.output(:link_name_icon)},
          {a[:baby_cn_name], hash(a[:baby_cn_name]), module.output(:link_baby_name_icon)},
          {a[:egg_cn_name], hash(a[:egg_cn_name]), module.output(:link_egg_name_icon)}
        ]
      end)
      |> Enum.concat()
      |> Enum.reject(fn {name, _, _} -> is_nil(name) end)

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
    |> Enum.concat(critters)
    |> Enum.concat(skiplist)
    |> Enum.sort_by(fn {cn_name, _, _} -> String.length(cn_name) end, :desc)
  end

  defp hash(nil), do: nil

  defp hash(string) do
    :md5 |> :crypto.hash(string) |> Base.encode16()
  end
end
