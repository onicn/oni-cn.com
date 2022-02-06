defmodule Onicn.Recipe do
  building_recipes =
    :onicn
    |> :code.priv_dir()
    |> Path.join("data/recipes.yaml")
    |> YamlElixir.read_from_file!()
    |> Enum.reject(fn building ->
      building["name"] |> Onicn.guess_name() |> is_nil()
    end)
    |> Enum.map(fn building ->
      %{
        name: Onicn.guess_name(building["name"]),
        recipes:
          Enum.map(building["recipes"], fn recipe ->
            %{
              produce:
                recipe
                |> Map.get("produce", [])
                |> Enum.map(fn p ->
                  Map.new(p, fn
                    {"material_id", value} -> {:material_id, Onicn.guess_name(value)}
                    {key, value} -> {String.to_atom(key), value}
                  end)
                end)
                |> Enum.reject(fn p -> is_nil(p[:material_id]) end),
              require:
                recipe
                |> Map.get("require", [])
                |> Enum.map(fn p ->
                  Map.new(p, fn
                    {"material_id", value} -> {:material_id, Onicn.guess_name(value)}
                    {key, value} -> {String.to_atom(key), value}
                  end)
                end)
                |> Enum.reject(fn p -> is_nil(p[:material_id]) end)
            }
          end)
      }
    end)
    |> Macro.escape()

  plant_recipes =
    Onicn.Categories.Plant.__properties__()
    |> Enum.filter(fn plant ->
      Enum.any?([:require_liquid, :require_fertilizer, :produce_crop], &Map.has_key?(plant, &1))
    end)
    |> Enum.reject(fn plant ->
      plant[:name] |> Onicn.guess_name() |> is_nil()
    end)
    |> Enum.map(fn plant ->
      %{
        name: Onicn.guess_name(plant[:name]),
        recipes: [
          %{
            produce:
              for %{produce_crop: produce_crop, produce_crop_num: produce_crop_num} <- plant do
                %{
                  material_id: Onicn.guess_name(produce_crop),
                  amount: produce_crop_num
                }
              end,
            require:
              [
                :require_fertilizer,
                :require_fertilizer_per_cycle,
                :require_liquid,
                :require_liquid_per_cycle
              ]
              |> Enum.map(&Map.get(plant, &1))
              |> Enum.map(&List.wrap/1)
              |> Enum.concat()
              |> Enum.chunk_every(2)
              |> Enum.map(fn [require_item, require_item_per_cycle] ->
                %{
                  material_id: Onicn.guess_name(require_item),
                  rate: {:circle, require_item_per_cycle}
                }
              end)
          }
        ]
      }
    end)
    |> Macro.escape()

  def recipes do
    Enum.concat(unquote(building_recipes), unquote(plant_recipes))
  end

  def building(building) do
    recipes()
    |> Enum.filter(fn %{name: name} -> name === building end)
    |> Enum.map(fn %{name: name, recipes: recipes} ->
      Enum.map(recipes, &Map.put(&1, :name, name))
    end)
    |> Enum.concat()
  end

  def produce(produce) do
    do_produce(recipes(), produce, [])
  end

  defp do_produce([], _produce, result) do
    result
  end

  defp do_produce([%{name: name, recipes: recipes} | t], produce, result) do
    recipes =
      recipes
      |> Enum.filter(fn %{produce: produces} ->
        Enum.any?(produces, fn
          %{material_id: {_, ^produce}} -> true
          %{material_id: ^produce} -> true
          _ -> false
        end)
      end)
      |> case do
        [] -> []
        recipes -> Enum.map(recipes, &Map.put(&1, :name, name))
      end

    do_produce(t, produce, result ++ recipes)
  end

  def require(required) do
    do_require(recipes(), required, [])
  end

  defp do_require([], _required, result) do
    result
  end

  defp do_require([%{name: name, recipes: recipes} | t], required, result) do
    recipes =
      recipes
      |> Enum.filter(fn %{require: requires} ->
        Enum.any?(requires, fn
          %{material_id: {_, ^required}} -> true
          %{material_id: ^required} -> true
          _ -> false
        end)
      end)
      |> case do
        [] -> []
        recipes -> Enum.map(recipes, &Map.put(&1, :name, name))
      end

    do_require(t, required, result ++ recipes)
  end

  def to_html(recipes) do
    recipes =
      Enum.map(recipes, fn recipe ->
        building = recipe[:name].output(:link_name_icon)

        requires =
          recipe
          |> Map.get(:require)
          |> Enum.map(&format/1)
          |> Enum.join("<br />")

        produces =
          recipe
          |> Map.get(:produce)
          |> Enum.map(&format/1)
          |> Enum.join("<br />")

        {building, requires, produces}
      end)

    :onicn
    |> :code.priv_dir()
    |> Path.join("templates/recipe.eex")
    |> EEx.eval_file(recipes: recipes)
  end

  defp format(material) do
    Enum.map([:material_id, :rate, :min_temp, :amount], fn key ->
      if Map.has_key?(material, key) do
        material |> Map.take([:material_id, key]) |> do_format()
      else
        ""
      end
    end)
  end

  defp do_format(%{material_id: {_, module}, amount: amount}) do
    do_format(%{material_id: module, amount: amount})
  end

  defp do_format(%{material_id: module, amount: amount}) do
    calories = Keyword.get(module.__attributes__(), :calories, 0)

    case Module.split(module) do
      ["Onicn", "Elements" | _] -> "#{amount} kg"
      _ when calories > 0 -> "#{amount} 单位(#{amount * calories} 千卡)"
      _ -> "#{amount} 单位"
    end
  end

  defp do_format(%{min_temp: temp}), do: "（最低 #{number_to_string(temp)} °C）"
  defp do_format(%{rate: {:circle, rate}}), do: "#{number_to_string(rate)} kg/周期"
  defp do_format(%{rate: rate}) when rate < 1, do: "#{number_to_string(rate * 1000)} g/s"
  defp do_format(%{rate: rate}), do: "#{number_to_string(rate)} kg/s"
  defp do_format(%{material_id: {:egg, module}}), do: module.output(:link_egg_name_icon)
  defp do_format(%{material_id: {:seed, module}}), do: module.output(:link_seed_name_icon)
  defp do_format(%{material_id: module}), do: module.output(:link_name_icon)

  defp number_to_string(number) when is_integer(number), do: number

  defp number_to_string(number) when is_float(number) do
    number
    |> :erlang.float_to_binary(decimals: 2)
    |> String.trim_trailing("0")
    |> String.trim_trailing(".")
  end
end
