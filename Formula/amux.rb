class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.24/amux-v0.2.24-darwin-arm64.tar.gz"
      sha256 "0a9e63f2aabe07b254f6f1d41904e07c2a12c6674ce7113fb5076b11fbf333cb"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.24/amux-v0.2.24-darwin-amd64.tar.gz"
      sha256 "40596472834f6fa89644babdae868d37ee2ca9000684459af55f3c828abe2225"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.24/amux-v0.2.24-linux-arm64.tar.gz"
      sha256 "1f2546dc61e0bea6bcd693ef9a6eea8df42124adc81c596bbbfc3f897336f333"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.24/amux-v0.2.24-linux-amd64.tar.gz"
      sha256 "b60d9fc9812bc97c47a9f0d03aae3d72b3b881a944e19646d08b9d2d2d6b2247"
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
