defmodule ConfigureItOut.Mixfile do
  use Mix.Project

  def project do
    [
      app:             :configure_it_out,
      build_embedded:  Mix.env == :prod,
      deps:            deps(),
      description:     description(),
      dialyzer:        dialyzer(),
      elixir:          "~> 1.3",
      package:         package(),
      start_permanent: Mix.env == :prod,
      version:         "0.3.0-dev",
    ]
  end

  def application do
    [
      applications: applications()
    ]
  end

  defp applications do
    [
      :logger
    ]
  end

  defp deps do
    [
      {:dialyxir, "~> 0.3.5", only: [:dev]},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    "A collection of helpful configure_it_out tools"
  end

  defp dialyzer do
    [
      flags: [
        "-Werror_handling",
        "-Wrace_conditions",
        "-Wunderspecs",
        "-Wunknown",
        "-Wunmatched_returns"
      ]
    ]
  end

  defp package do
    %{
      maintainers: ["Michael Pope"],
      licenses:    ["Apache 2.0"],
      links:       %{github: "https://github.com/amorphid/compile"}
    }
  end
end
