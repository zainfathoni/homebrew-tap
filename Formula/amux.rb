class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.4.0/amux-v0.4.0-darwin-arm64.tar.gz"
      sha256 "1f5faf48156c7226b24169fbc991635ec53a2fc406bf85a7189e6d716854671b"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.4.0/amux-v0.4.0-darwin-amd64.tar.gz"
      sha256 "b99d51ca9e662a4e90725aa90cbc9f7e1704ffbfb0d3e6d233b4ef5fa176406f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.4.0/amux-v0.4.0-linux-arm64.tar.gz"
      sha256 "1bd2bf4f0fb55a97256ebdf1452db3254092130b6432b09e1f1c10a1f7d456b3"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.4.0/amux-v0.4.0-linux-amd64.tar.gz"
      sha256 "11a17dd2c00673c763d79c2b0abce7c0cc9892c3d6a6009acab324846b50ed3c"
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
