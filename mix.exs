defmodule RedisPool.Mixfile do
  use Mix.Project

  def project do
    [ app: :redis_pool,
      version: "0.2.3",
      elixir: "~> 1.0",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [
      mod: {RedisPool, []},
      applications: [:kernel, :stdlib]
    ]
  end

  defp deps do
    [{:exredis, "~> 0.2.0"},
     {:poolboy, "~> 1.5.0"}]
  end
end
