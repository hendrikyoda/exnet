defmodule Exnet.BundlexProject do
  use Bundlex.Project

  def project() do
    [
      natives: natives(Bundlex.platform())
    ]
  end

  def natives(_platform) do
    [
      exnet: [
        sources: ["exnet.c"],
        includes: ["enet/include"],
        lib_dirs: ["enet/.libs"],
        libs: ["enet"],
        interface: [:nif, :cnode],
        preprocessor: Unifex
      ]
    ]
  end
end
