defmodule Onicn.Recipe do
  recipes =
    :onicn
    |> :code.priv_dir()
    |> Path.join("data/recipes.ex")
    |> Code.eval_file()
    |> elem(0)
    |> Macro.escape()

  def recipes do
    unquote(recipes)
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
    [:material_id, :rate, :min_temp]
    |> Enum.map(fn key -> material |> Map.take([key]) |> do_format() end)
    |> Enum.join()
  end

  defp do_format(%{material_id: {:egg, module}}), do: module.output(:link_egg_name_icon)
  defp do_format(%{material_id: {:seed, module}}), do: module.output(:link_seed_name_icon)
  defp do_format(%{material_id: module}), do: module.output(:link_name_icon)
  defp do_format(%{min_temp: temp}), do: "（最低 #{number_to_string(temp)} °C）"
  defp do_format(%{rate: rate}) when rate < 1, do: "#{number_to_string(rate * 1000)} g/s"
  defp do_format(%{rate: rate}), do: "#{number_to_string(rate)} kg/s"
  defp do_format(%{}), do: ""

  defp number_to_string(number) when is_integer(number), do: number

  defp number_to_string(number) when is_float(number) do
    number
    |> :erlang.float_to_binary(decimals: 2)
    |> String.trim_trailing("0")
    |> String.trim_trailing(".")
  end
end
