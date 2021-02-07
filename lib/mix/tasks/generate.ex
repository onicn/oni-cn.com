defmodule Mix.Tasks.Onicn.Generate do
  use Mix.Task

  def run(_args) do
    Onicn.generate_all()
  end
end
