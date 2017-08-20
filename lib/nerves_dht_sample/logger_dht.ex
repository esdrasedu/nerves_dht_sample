defmodule NervesDhtSample.LoggerDht do
  use NervesDht

  def listen({:ok, p, s, h, t}) do
    IO.puts("Listen event on MyGenServer")
    IO.puts("Pin: #{p}, Sensor: #{s}")
    IO.puts("Temperature: #{t} Humidity: #{h}\n")
  end

  def listen({:error, error}) do
    IO.puts("Listen event on MyGenServer")
    IO.puts("Error: #{error}\n")
  end
end
