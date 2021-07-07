defmodule ChatTest do
  use ExUnit.Case, async: true

  doctest Chat
  # exclude = if Node.alive?(), do: [], else: [distributed: true]
  # ExUnit.start(exclude: exclude)

  test "send_message" do
    assert Chat.send_message(:moebi@localhost, "hi") == :ok
  end
end
