# Chat

**TODO: Add description**
A small sample project thats shows how two node can communicate between each other

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `chat` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:chat, "~> 0.1.0"}
  ]
end
```
 sending and receiving messages between two nodes localy <br>
 first, run  the elixir project in two terminal iex --sname ben@localhost and iex --sname bera@localhost <br>
 on the first terminal type  Chat.send_message(:bera@localhost, "helloo Mr Bera")
Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/chat](https://hexdocs.pm/chat).

