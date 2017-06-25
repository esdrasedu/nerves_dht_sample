defmodule NervesDhtSample do
  alias NervesDhtSample.LoggerDht

  def start(_type, _args) do
    pin = Application.get_env(:nerves_dht_sample, :pin)
    {:ok, dht} = NervesDht.start_link(pin)
    {:ok, _pid} = NervesDht.add_handler(dht, LoggerDht)
    {:ok, self()}
  end

end
