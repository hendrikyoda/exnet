defmodule ExnetTest do
  use ExUnit.Case
  doctest Exnet

  test "greets the world" do
    assert Exnet.hello() == :world
  end
end
