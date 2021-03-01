defmodule Onicn.MixProject do
  use Mix.Project

  def project 
  do
    [
      app: :onicn,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      xref: [exclude: :crypto],
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger, :eex]
    ]
  end

  defp deps do
    [
      {:jason, "~> 1.2"},
      {:yaml_elixir, "~> 2.5"},
      {:earmark, "~> 1.4"}
    ]
  end
end
