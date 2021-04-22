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
        sections = unquote(__MODULE__).merge_sections(__sections__(), __extra_sections__())
        unquote(__MODULE__).output(:html_content, __MODULE__, sections)
      end

      def __sections__ do
        Enum.reverse(@sections)
      end

      def __extra_sections__ do
        options = [markdown: false, link_name_icon: false]
        produces = Onicn.Recipe.produce(__MODULE__)

        requires =
          Enum.concat([
            Onicn.Recipe.building(__MODULE__),
            Onicn.Recipe.require(__MODULE__)
          ])

        Enum.concat([
          (produces === [] && []) ||
            [{"生产", [{:content, Onicn.Recipe.to_html(produces), options}]}],
          (requires === [] && []) ||
            [{"用途", [{:content, Onicn.Recipe.to_html(requires), options}]}]
        ])
      end
    end
  end

  def merge_sections(sections1, sections2) do
    do_merge_sections(sections1, sections2, [])
  end

  defp do_merge_sections([], s2, result) do
    Enum.reverse(result) ++ s2
  end

  defp do_merge_sections([{n1, c1} | t], s2, result) do
    case Enum.split_with(s2, fn {n2, _} -> n2 === n1 end) do
      {[], _} -> do_merge_sections(t, s2, [{n1, c1} | result])
      {[{_name, c2}], rest} -> do_merge_sections(t, rest, [{n1, c1 ++ c2} | result])
    end
  end

  defmacro section(section_name, do: {:__block__, [], block}) do
    do_section(section_name, block)
  end

  defmacro section(section_name, do: str) when is_binary(str) do
    do_section(section_name, [str])
  end

  def do_section(section_name, contents) do
    default_options = [markdown: true, link_name_icon: true]

    contents =
      contents
      |> Enum.map(fn
        {:content, _, [content, options]} ->
          {:content, content, Keyword.merge(default_options, options)}

        {:content, _, [content]} ->
          {:content, content, default_options}

        {:image, _, [path, options]} ->
          {:image, image_block(path, options), Keyword.merge(default_options, options)}

        content ->
          {:content, content, default_options}
      end)
      |> Enum.map(fn
        {:content, content, options} ->
          content =
            content
            |> Code.eval_quoted()
            |> elem(0)

          content =
            content
            |> String.split("\n", trim: true)
            |> Enum.all?(fn line ->
              line = String.trim(line)
              String.starts_with?(line, "|") && String.ends_with?(line, "|")
            end)
            |> case do
              true -> Enum.join([content, "{: .layui-table}"], "\n")
              false -> content
            end

          {:content, content, options}

        other ->
          other
      end)
      |> Macro.escape()

    quote do
      @sections {unquote(section_name), unquote(contents)}
    end
  end

  defp image_block(path, options) do
    html_options =
      options
      |> Keyword.take([:align, :width, :height])
      |> Enum.map(fn {k, v} -> ~s|#{k}="#{v}"| end)
      |> Enum.join(" ")

    ~s|<img #{html_options} src="/content_images/#{path}">|
  end

  def output(:html_content, item_module, sections) do
    escape =
      if function_exported?(item_module, :__attributes__, 0) do
        [item_module.__attributes__()[:cn_name]]
      else
        []
      end

    :onicn
    |> :code.priv_dir()
    |> Path.join("templates/content.eex")
    |> EEx.eval_file(sections: sections, escape: escape)
  end
end
