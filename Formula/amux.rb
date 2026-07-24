class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.33/amux-v0.2.33-darwin-arm64.tar.gz"
      sha256 "5ad01a2d233d074d1da7307b07da55d410b512512e18d8b8303b53de39860b26"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.33/amux-v0.2.33-darwin-amd64.tar.gz"
      sha256 "010620ca1753be79fa467b9d74c93f5c57cd8b8661e4c0920782eee6f1fa0356"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.33/amux-v0.2.33-linux-arm64.tar.gz"
      sha256 "0478c01d9296ed2077f938989673711c51d06fa944b846032d672a6c16f53c37"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.33/amux-v0.2.33-linux-amd64.tar.gz"
      sha256 "17f1ad13442b98b890292418a0ccca8a5ad1502d09bd4c6de5a907635703f128"
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
