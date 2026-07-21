class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.20/amux-v0.2.20-darwin-arm64.tar.gz"
      sha256 "16594d7bd661fdec81bbfc665f1e7d88294688eac77b0588e4c3c4201165df71"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.20/amux-v0.2.20-darwin-amd64.tar.gz"
      sha256 "c2fb279e3aa51498c6af4c2ef48b59a8643341d7a5e295a3ba78888a58a6b1cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.20/amux-v0.2.20-linux-arm64.tar.gz"
      sha256 "3258b84df89f1dfa4630a8bae51d0ad76843dcfcc1d0a3ede5f56211c82d46a4"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.20/amux-v0.2.20-linux-amd64.tar.gz"
      sha256 "18430d6517a27d2c17c001b5c4a181a449d7134829128f0ed5c4abbec78f6013"
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
