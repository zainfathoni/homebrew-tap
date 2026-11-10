class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.7.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.11/amux-v0.7.11-darwin-arm64.tar.gz"
      sha256 "6547734fb2d3a3c91cb3551f41d20c869937ad65d81c658e8e5622aa434b48fd"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.11/amux-v0.7.11-darwin-amd64.tar.gz"
      sha256 "ff576c0d7b8a072c058a82326447d7a0b7432244b68d68d2125d669225e574ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.11/amux-v0.7.11-linux-arm64.tar.gz"
      sha256 "52ace7fb6247aab8d01cfbb98501e2f6147775df380480d5be2cb96c3b04adc4"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.11/amux-v0.7.11-linux-amd64.tar.gz"
      sha256 "b3c2118ede724ffaf41824e619d1fee983fb5a2d114ddee67e65595a22b3eeef"
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
