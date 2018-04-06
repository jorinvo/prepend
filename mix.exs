defmodule Prepend.MixProject do
  use Mix.Project

  def project do
    [
      app: :prepend,
      version: "0.1.0",
      elixir: "~> 1.6",
      escript: [main_module: Prepend.CLI],
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :stream_data]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:stream_data, "~> 0.4.2", only: [:dev, :test], runtime: false},
      {:mix_test_watch, "~> 0.5", only: :dev, runtime: false},
      {:credo, "~> 0.9.0-rc1", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false}
    ]
  end
end
