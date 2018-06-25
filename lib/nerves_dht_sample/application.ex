defmodule NervesDhtSample.Application do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    pin = Application.get_env(:nerves_dht_sample, :pin)
    sensor = Application.get_env(:nerves_dht_sample, :sensor)
    # Define workers and child supervisors to be supervised
    children = [
      worker(NervesDhtSample.LoggerDht, [{pin, sensor}, [name: NervesDhtSample.LoggerDht]]),
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: NervesDhtSample.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
