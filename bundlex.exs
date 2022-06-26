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
        interface: [:nif, :cnode],
        preprocessor: Unifex
      ]
    ]
  end
end
