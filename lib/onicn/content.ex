defmodule Onicn.Content do
  defmacro __using__(_) do
    quote do
      Module.register_attribute(__MODULE__, :sections, accumulate: true)

      @before_compile unquote(__MODULE__)
      import unquote(__MODULE__)
    end
  end

  defmacro __before_compile__(%Macro.Env{}) do
    quote do
      def output(:html_content) do
        unquote(__MODULE__).output(:html_content, __MODULE__, __sections__())
      end

      def __sections__ do
        Enum.reverse(@sections)
      end
    end
  end

  defmacro section(section_name, do: {:__block__, [], block}) do
    do_section(section_name, block)
  end

  defmacro section(section_name, do: str) when is_binary(str) do
    do_section(section_name, [str])
  end

  def do_section(section_name, contents) do
    contents =
      Enum.map(contents, fn
        {:content, _, [content, options]} -> [:content, content, options]
        {:content, _, [content]} -> [:content, content, []]
        content -> [:content, content, []]
      end)

    quote do
      @sections {unquote(section_name), unquote(contents)}
    end
  end

  def output(:html_content, item_module, sections) do
    escape = item_module.__attributes__[:cn_name]

    :onicn
    |> :code.priv_dir()
    |> Path.join("templates/content.eex")
    |> EEx.eval_file(sections: sections, escape: escape)
  end
end
