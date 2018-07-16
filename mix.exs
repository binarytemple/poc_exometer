defmodule PocExometer.MixProject do
  use Mix.Project

  def project do
    [
      app: :poc_exometer,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {PocExometer.Application, []}
    ]
  end

  defp deps do
    [
      {:lager,  git: "git@github.com:/erlang-lager/lager.git", tag: "3.6.4", manager: :rebar3, override: true}, 
      {:lager_logger,  git: "git@github.com:bryanhuntesl/lager_logger.git", tag: "feature/elixir-1.6.6-erlang-20"}, 
      {:setup, git: "git://github.com/uwiger/setup.git", tag: "2.0.2", manager: :rebar3, override: true},
      {:exometer_core,  git: "git@github.com:/Feuerlabs/exometer_core.git", branch: "master", manager: :rebar3, override: true,runtime: false}, 
      {:elixometer, git: "git@github.com:bryanhuntesl/elixometer.git", branch: "master"},
    ]
  end
end
