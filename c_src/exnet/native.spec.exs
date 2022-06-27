module Exnet.Native

interface [NIF, CNode]

spec foo(num :: int) :: {:ok :: label, answer :: int}
