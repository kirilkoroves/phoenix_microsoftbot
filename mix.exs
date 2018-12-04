defmodule PhoenixMicrosoftbot.Mixfile do
  use Mix.Project

  def project do
    [app: :phoenix_microsoftbot,
     version: "1.0.0",
     elixir: "~> 1.3",
     description: description,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     deps: deps]
  end

  def description do
    "This library allows for easy creation of the web API that the Microsoft bot framework can connect to."
  end

  defp package do
    [
      licenses: ["MIT License"],
      maintainers: ["Zohaib Rauf"],
      links: %{
        "Github" => "https://github.com/zabirauf/phoenix_microsoftbot",
        "Docs" => "https://hexdocs.pm/phoenix_microsoftbot/"
      }
    ]
  end

  # Configuration for the OTP application"~> 0.1.0"
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :ex_microsoftbot]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:phoenix, "~> 1.2.1"},
      {:inch_ex, "~> 0.5", only: :docs},
      {:ex_microsoftbot, "~> 2.0"},
      {:dialyxir, "~> 0.4", only: [:dev]},
      {:ex_doc, "~> 0.14", only: [:dev]}
    ]
  end
end
