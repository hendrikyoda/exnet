defmodule Exnet.BundlexProject do
  use Bundlex.Project

  def project() do
    [
      natives: natives(Bundlex.platform())
    ]
  end

  def natives(_platform) do
    [
      native: [
        sources: ["native.c"],
        interface: [:nif, :cnode],
        preprocessor: Unifex
      ]
    ]
  end
end
