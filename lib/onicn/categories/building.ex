defmodule Onicn.Categories.Building do
  buildings =
    :onicn
    |> :code.priv_dir()
    |> Path.join("data/buildings.ex")
    |> Code.eval_file()
    |> elem(0)
    |> Macro.escape()

  defmacro __using__(_options) do
    name = __CALLER__.module |> to_string() |> String.split(".") |> List.last()

    quote do
      def __attributes__ do
        Onicn.Categories.Building.__buildings__()
        |> Enum.find(fn building -> building["tag"] === unquote(name) end)
      end

      def output(:link_name_icon) do
        path = "/buildings/#{Macro.underscore(unquote(name))}"

        ~s|<a href="#{path}">
          <img src="/img#{path}.png" style="weight:16px;height:16px;">
          #{__attributes__()[:name]}
        </a>|
      end
    end
  end

  def __buildings__ do
    unquote(buildings)
  end

  def __building_modules__ do
    __buildings__()
    |> Enum.map(fn %{tag: tag} ->
      module = Module.concat(["Onicn.Buildings", tag])
      (function_exported?(module, :__attributes__, 0) && module) || nil
    end)
    |> Enum.reject(&is_nil/1)
  end
end
