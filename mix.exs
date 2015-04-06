defmodule Axl.Mixfile do
  use Mix.Project

  def project do
    [app: :elixir_enum_benchmark ,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps(Mix.env),
     default_task: "benchmark",
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps(_) do
    [
      {:benchwarmer, "~> 0.0", only: :dev},
    ]
  end
end
