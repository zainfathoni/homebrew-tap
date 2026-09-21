class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.2/amux-v0.7.2-darwin-arm64.tar.gz"
      sha256 "fea549f556037c2e35ae059c2eb87ad15e4d2a6f887a81b919f6a42f759a85c7"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.2/amux-v0.7.2-darwin-amd64.tar.gz"
      sha256 "a448b763cf7550c3e27dd077b06847091c09e0167f76d9663d9b97a2be0eca18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.2/amux-v0.7.2-linux-arm64.tar.gz"
      sha256 "f70b228569c83311588dac3e93b79daeea6c497030e7d217d41fc7592c76042d"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.2/amux-v0.7.2-linux-amd64.tar.gz"
      sha256 "beb25753481d577df35f760fca4514570fca10d052474fb66d806fd5b550803f"
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
