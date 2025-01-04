alias Onicn.Categories.{Solid, Liquid, Gas, Building, Critter, Plant, Food, Geyser, Other}

defmodule Onicn.Item do
  @skiplist [
    "水下",
    "水中",
    "水域",
    "水温",
    "溺水",
    "眼冒金星",
    "离水之鱼",
    "补水",
    "被水淹没",
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
      |> Enum.map(& &1.__critters__())
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

    plants =
      Plant.__plants__()
      |> Enum.map(fn module ->
        a = module.__attributes__()

        [
          {a[:cn_name], hash(a[:cn_name]), module.output(:link_name_icon)},
          {a[:seed_cn_name], hash(a[:seed_cn_name]), module.output(:link_seed_name_icon)}
        ]
      end)
      |> Enum.concat()
      |> Enum.reject(fn {name, _, _} -> is_nil(name) end)

    foods =
      Food.__foods__()
      |> Enum.map(fn module ->
        a = module.__attributes__()

        [
          {a[:cn_name], hash(a[:cn_name]), module.output(:link_name_icon)}
        ]
      end)
      |> Enum.concat()
      |> Enum.reject(fn {name, _, _} -> is_nil(name) end)

    geysers =
      Geyser.__geysers__()
      |> Enum.map(fn module ->
        a = module.__attributes__()

        [
          {a[:cn_name], hash(a[:cn_name]), module.output(:link_name_icon)}
        ]
      end)
      |> Enum.concat()
      |> Enum.reject(fn {name, _, _} -> is_nil(name) end)

    others =
      Other.__others__()
      |> Enum.map(fn module ->
        a = module.__attributes__()

        [
          {a[:cn_name], hash(a[:cn_name]), module.output(:link_name_icon)}
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
      cn_name = module.__attributes__()[:cn_name]
      {cn_name, hash(cn_name), module.output(:link_name_icon)}
    end)
    |> Enum.concat(critters)
    |> Enum.concat(plants)
    |> Enum.concat(skiplist)
    |> Enum.concat(foods)
    |> Enum.concat(geysers)
    |> Enum.concat(others)
    |> Enum.sort_by(fn {cn_name, _, _} -> String.length(cn_name) end, :desc)
  end

  defp hash(nil), do: nil

  defp hash(string) do
    :md5 |> :crypto.hash(string) |> Base.encode16()
  end
end
