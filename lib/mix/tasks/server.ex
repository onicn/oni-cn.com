require Logger

defmodule Mix.Tasks.Onicn.Server do
  use Mix.Task

  def run(_args) do
    Application.ensure_all_started(:plug_cowboy)
    Plug.Cowboy.http(Onicn.Server, [])
    Logger.info("Serve Onicn on http://127.0.0.1:4000 ...")

    receive do
    end
  end
end
