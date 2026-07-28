class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.2/amux-v0.3.2-darwin-arm64.tar.gz"
      sha256 "1a0a26d2c390ee946a95b579e12e8a24db27c1e02667b9bcaeedb0309aaa3264"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.2/amux-v0.3.2-darwin-amd64.tar.gz"
      sha256 "2a5641599f0fe313da42ce9ee1148b960a38c3a5839db32d8e036888d01f8aed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.2/amux-v0.3.2-linux-arm64.tar.gz"
      sha256 "4bc32ca5c35c81b13891581af72cdaf4f0e847297400cb776f142a7328de2302"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.2/amux-v0.3.2-linux-amd64.tar.gz"
      sha256 "9c567e667a47eb66c58851be8af0a0df657904f47668df20027a21e700fc640a"
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
