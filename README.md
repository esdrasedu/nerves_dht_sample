# Nerves DHT Sample

[Nerves DHT](https://github.com/esdrasedu/nerves_dht) sample using [Nerves](http://nerves-project.org/).

## Circuit for Raspberry Pi
[raspberry_pi0.png]: https://raw.githubusercontent.com/esdrasedu/nerves_dht/master/circuits/raspberry_pi0.png "Raspberry Pi"
Standard circuit work for `rpi`, `rpi0`, `rpi2`, `rpi3`, `rpi3a`

## Circuit for Arduino
[arduino.png]: https://raw.githubusercontent.com/esdrasedu/nerves_dht/master/circuits/arduino.png "Arduino"
This code only works using arms supported by `Nerves`, but if you want to check your circuit using `Arduino`, that the [code](https://github.com/esdrasedu/nerves_dht_sample.master/arduino_sample.ino)

## Getting Started
To start your Nerves app:
  * `export MIX_TARGET=my_target` or prefix every command with
    `MIX_TARGET=my_target`. For example, `MIX_TARGET=rpi3`
  * Install dependencies with `mix deps.get`
  * Create firmware with `mix firmware`
  * Burn to an SD card with `mix firmware.burn`
  
## Running Host target
`NervesDht` works with host target, mocking whole result.
  * `export MIX_TARGET=host`
  * `mix deps.get`
  * `mix compile`
  * `mix run`
