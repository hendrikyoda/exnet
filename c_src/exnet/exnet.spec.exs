module Exnet

interface [NIF, CNode]

callback :load
callback :unload

type exnet_address :: %Address{
  host: unsigned,
  port: unsigned
}

spec host_create(address :: exnet_address, peer_count :: unsigned, channel_limit :: unsigned,
  incoming_bandwith :: unsigned, outgoing_bandwith :: unsigned)
  :: {:ok :: label, host :: payload} | {:error :: label, reason :: atom}

spec address_create(host :: string, port :: unsigned) :: {:ok :: label, address :: exnet_address}
  | {:error :: label, :host :: label}
