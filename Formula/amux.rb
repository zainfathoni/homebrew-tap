class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.7/amux-v0.3.7-darwin-arm64.tar.gz"
      sha256 "31563741599247dc5e7a7924a98a53ec494c4736681dbf341092f44407549892"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.7/amux-v0.3.7-darwin-amd64.tar.gz"
      sha256 "82857bcb1322597586f952059e22ae8bd04888e706d28466d0d506d8f67d36b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.7/amux-v0.3.7-linux-arm64.tar.gz"
      sha256 "bbac22d81d28db9ac21908670fd7fc38a7e37b88d0a28213ba8907ebd7a402a7"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.7/amux-v0.3.7-linux-amd64.tar.gz"
      sha256 "cb56aa2cb98f705c3dce049da1ad4d85526192dd309e74d7d3fd43846995519e"
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
