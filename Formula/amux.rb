class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.21/amux-v0.2.21-darwin-arm64.tar.gz"
      sha256 "1b8d33cfffd27e18b3e90e21c2429cb7f815cd6a1ba36a929979e0f196efe999"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.21/amux-v0.2.21-darwin-amd64.tar.gz"
      sha256 "c2ae672d49535454fe39a3d80325792d1e0e0b15cf36cf244a9232d8460b7cf6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.21/amux-v0.2.21-linux-arm64.tar.gz"
      sha256 "2bee218ca4d27bf6153ffaab6b4248cf1dab06d3ab8f5586df69d17f6b76becb"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.21/amux-v0.2.21-linux-amd64.tar.gz"
      sha256 "44825c0b9e24a8dfa356d1b2b9c6ea76ec511c61ad19cfbb4b04a5338f279af9"
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
