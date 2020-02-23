defmodule ElixirApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_api,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ElixirApi.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # just a JSON library for Elixir
      {:poison, "~> 3.0"},
      # connection adapters for different web servers in the Erlang VM and
      # connection is a direct interface to the underlying web server
      {:plug_cowboy, "~> 2.0"}
    ]
  end
end
