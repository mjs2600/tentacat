defmodule Tentacat.Mixfile do
  use Mix.Project

  def project do
    [ app: :tentacat,
      version: "0.0.1",
      elixir: "~> 0.10.2",
      deps: deps(Mix.env) ]
  end

  def application do
    [ applications: [ :httpoison, :jsex ] ]
  end

  defp deps(:dev) do
   [
    {:httpoison, github: "edgurgel/httpoison"},
    {:jsex, github: "talentdeficit/jsex"}
   ]
  end

  defp deps(:docs) do
    deps(:dev) ++
      [ {:ex_doc, github: "elixir-lang/ex_doc" } ]
  end

  defp deps(:test) do
    deps(:dev) ++
      [ {:meck, github: "eproxus/meck", tag: "0.7.2" } ]
  end

  defp deps(_), do: deps(:dev)

end
