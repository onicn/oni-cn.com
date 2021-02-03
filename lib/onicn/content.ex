defmodule Onicn.Content do
  defmacro __using__(_) do
    quote do
      @contents %{
        summary: [],
        usage: [],
        production: [],
        tips: []
      }

      @before_compile unquote(__MODULE__)
      import unquote(__MODULE__)
    end
  end

  defmacro __before_compile__(%Macro.Env{}) do
    quote do
      def output(:html_content) do
        unquote(__MODULE__).output(:html_content, __contents__())
      end

      def __contents__ do
        @contents
      end
    end
  end

  def link(module) do
    module.output(:link_name_icon)
  end

  defmacro summary(str) do
    do_append(:summary, [], str)
  end

  defmacro summary(options, str) do
    do_append(:summary, options, str)
  end

  defmacro usage(str) do
    do_append(:usage, [], str)
  end

  defmacro usage(options, str) do
    do_append(:usage, options, str)
  end

  defmacro production(str) do
    do_append(:production, [], str)
  end

  defmacro production(options, str) do
    do_append(:production, options, str)
  end

  defmacro tips(str) do
    do_append(:tips, [], str)
  end

  defmacro tips(options, str) do
    do_append(:tips, options, str)
  end

  defp do_append(type, options, str) do
    quote do
      new_value = Map.get(@contents, unquote(type)) ++ [{unquote(options), unquote(str)}]
      @contents Map.put(@contents, unquote(type), new_value)
    end
  end

  def output(:html_content, contents) do
    contents = Map.to_list(contents)

    :onicn
    |> :code.priv_dir()
    |> Path.join("templates/content.eex")
    |> EEx.eval_file(contents)
  end
end
