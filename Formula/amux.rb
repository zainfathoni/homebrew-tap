class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.4/amux-v0.3.4-darwin-arm64.tar.gz"
      sha256 "7aec9a2810dca756063a400fcb3f38414326aa00f6a7120c056c9463355498a1"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.4/amux-v0.3.4-darwin-amd64.tar.gz"
      sha256 "afc65021cc79a43a219ac75a9f1b6a864c96e2378c31ff4711c4617eb00ca2bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.4/amux-v0.3.4-linux-arm64.tar.gz"
      sha256 "fbd4cc2b9cc17b5cb7c7034dc8bea7b8a0e062fc87d2201f1cf69bf6d5ad5b3c"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.4/amux-v0.3.4-linux-amd64.tar.gz"
      sha256 "d11b6f1edf10a79a4d47dd7658c4e6c9e73e5e673be14e8f6a8f4bda1f62797a"
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
