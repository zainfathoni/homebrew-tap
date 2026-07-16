class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.2/amux-v0.2.2-darwin-arm64.tar.gz"
      sha256 "2caeaa07a00868c38abc128533e3c41b6b8b5e15f910bb9211b438a307f3b1a8"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.2/amux-v0.2.2-darwin-amd64.tar.gz"
      sha256 "63b025150b9ff2dbc38ec82caf0f1d63fae174e2fafbc23a1852c7b6e6e7879d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.2/amux-v0.2.2-linux-arm64.tar.gz"
      sha256 "bd0a4c32935070928bed006602c039cd9781b7a93f7261b68d3ed19ebf1cb6a3"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.2/amux-v0.2.2-linux-amd64.tar.gz"
      sha256 "5f74306a472719f2fcce5b9202e2bce889ebb2ed4e0c4b11687fa8ad8250f937"
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
