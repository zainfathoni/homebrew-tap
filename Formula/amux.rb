class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.5.1/amux-v0.5.1-darwin-arm64.tar.gz"
      sha256 "fec786dd430043aabe2d700f5711541e73d94c08359a289bf9e4552c629bcc00"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.5.1/amux-v0.5.1-darwin-amd64.tar.gz"
      sha256 "c1a133ad11c3c1b395de3452096ebe0b55b47a5c4036269973f65ba3d5e16ff2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.5.1/amux-v0.5.1-linux-arm64.tar.gz"
      sha256 "7b97964516a4a7c6d796c9e010c50070bca0a18ee55eb617d6aadcc5b07c8b49"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.5.1/amux-v0.5.1-linux-amd64.tar.gz"
      sha256 "3c7f6ebf4db615a1f74b6f6b193ce7a8b23802f58718d2f48fd372029b742582"
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
