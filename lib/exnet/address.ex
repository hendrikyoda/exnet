defmodule Exnet.Address do
  @moduledoc """

  """
  @type t :: %__MODULE__{host: pos_integer, port: pos_integer}
  defstruct [:host, :port]

  @spec create(String.t, pos_integer) :: __MODULE__.t
  def create(host, port) do
    {:ok, address} = Exnet.address_create(host, port)
    address
  end
end
