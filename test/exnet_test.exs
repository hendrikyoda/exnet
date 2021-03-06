defmodule ExnetTest do
  use ExUnit.Case
  doctest Exnet

  test "greets the world" do
    assert Exnet.hello() == :world
  end

  test "create host" do
    address = Exnet.Address.create("127.0.0.1", 2000)

    {:ok, host} = Exnet.host_create(address, 10, 5, 0, 0)
    assert is_binary(host)
  end
end
