defmodule NervesDhtSample.LoggerDht do
  use GenServer

  def start_link(state, opts \\ []) do
    GenServer.start_link(__MODULE__, state, opts)
  end

  def handle_cast({:ok, h, t}, state) do
    IO.puts("Listen event on MyGenServer")
    IO.puts("Temperature: #{t} Humidity: #{h}\n")
    {:noreply, state}
  end
end
