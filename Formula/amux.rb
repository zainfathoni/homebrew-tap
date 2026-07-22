class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.29/amux-v0.2.29-darwin-arm64.tar.gz"
      sha256 "997933ea3d78b83e6527fad5222f55011a0f1b69fa7e7456b335d1d0f332b9ba"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.29/amux-v0.2.29-darwin-amd64.tar.gz"
      sha256 "a3bde9b2be13d5cf4b7158bc495cc1dff1008c7937b3d7e403c2774a7cffe63c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.29/amux-v0.2.29-linux-arm64.tar.gz"
      sha256 "79191fc02a739222b9baa0aa48a61a3401816d7afa59d2a18944f4e44a3b31f4"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.29/amux-v0.2.29-linux-amd64.tar.gz"
      sha256 "28f7505b2ae5594c198bb0948f421d525e5da8c8f9f77cd07129c381ee0c4db3"
    end
  end

  depends_on "tmux"

  def install
    bin.install "amux"
  end

  test do
    assert_match "amux v#{version}", shell_output("#{bin}/amux version")
  end
end
