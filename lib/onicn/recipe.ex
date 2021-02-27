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
          |> Enum.map(fn
            %{material_id: {:egg, module}} -> module.output(:link_egg_name_icon)
            %{material_id: {:seed, module}} -> module.output(:link_seed_name_icon)
            %{material_id: module} -> module.output(:link_name_icon)
          end)
          |> Enum.join("<br />")

        produces =
          recipe
          |> Map.get(:produce)
          |> Enum.map(fn
            %{material_id: {:egg, module}} -> module.output(:link_egg_name_icon)
            %{material_id: {:seed, module}} -> module.output(:link_seed_name_icon)
            %{material_id: module} -> module.output(:link_name_icon)
          end)
          |> Enum.join("<br />")

        {building, requires, produces}
      end)

    :onicn
    |> :code.priv_dir()
    |> Path.join("templates/recipe.eex")
    |> EEx.eval_file(recipes: recipes)
  end
end
