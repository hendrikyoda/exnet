defmodule Exnet.Address do
  @moduledoc """

  """
  @type t :: %__MODULE__{host: pos_integer, port: pos_integer}
  defstruct [:host, :port]

  @doc """
  Creates a Address with a resolved host. This means you can connect
  to domain names and ip addressess.

  #### Warning (: .warning)
  DO NOT create the Address struct without the create function.
  This function calls enet internals to ensure the hosts integer
  is set correctly.

  ## Examples
      iex> address = Exnet.Address.create("127.0.0.1", 1300)
      iex> is_struct(address)
      true
  """
  @spec create(String.t, pos_integer) :: __MODULE__.t
  def create(host, port) do
    {:ok, address} = Exnet.address_create(host, port)
    address
  end
end
