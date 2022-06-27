# Exnet

This package is unstable and not usable for now!

This package makes it easy to use [ENet](https://github.com/lsalzman/enet) via Nifs in Elixir.
Furthermore it adds the option to use encrypted packages via [DTLS](https://github.com/membraneframework/ex_dtls).

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `exnet` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:exnet, "~> 0.1.0"}
  ]
end
```

Otherwise you can install it through git by adding it to your list of dependencies in `mix.exs`:
```elixir
def deps do
  [
    {:exnet, git: "https://github.com/hendrikyoda/exnet", tag: "0.1"}
  ]
end
```

## Building

After you installed this library you can build it, via the make file:
```bash
$: make
```

## Additional

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/exnet>.

