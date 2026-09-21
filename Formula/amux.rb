class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.7.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.4/amux-v0.7.4-darwin-arm64.tar.gz"
      sha256 "1a9d6c8943f382d8cf2fe74c979ea6984d86176ba658219c46307cb4a271648c"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.4/amux-v0.7.4-darwin-amd64.tar.gz"
      sha256 "9ea6cec03c6a5dc2a7c1038691b322cd7c130aecd9c1456a38b8eb36a94f5a18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.4/amux-v0.7.4-linux-arm64.tar.gz"
      sha256 "58edb393d36fbb382171ec9d83f3c91786203fe4afd5321256e1accadb0f78e4"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.4/amux-v0.7.4-linux-amd64.tar.gz"
      sha256 "10f02c56f2e456dd0eb7622499e784955788df5d3371d2f7d63f67136e7c874c"
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
