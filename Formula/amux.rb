class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.10/amux-v0.2.10-darwin-arm64.tar.gz"
      sha256 "940d8cdfe84e1df09b042d5ab93f3388183cbbe8750969efa2a612c6b79f3403"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.10/amux-v0.2.10-darwin-amd64.tar.gz"
      sha256 "9695db526efe87a4865d94d8afae2340cb4ff740d533c90cd4ea3e3698eb39c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.10/amux-v0.2.10-linux-arm64.tar.gz"
      sha256 "bfc292d854e2ef4c328643ab6197efd1a11d77e5b519d3e567591b0fcb006a9b"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.10/amux-v0.2.10-linux-amd64.tar.gz"
      sha256 "21852081f29402db047fda10348a2d8a6711dc1f2527d2260826868032f72881"
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
