class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.19/amux-v0.2.19-darwin-arm64.tar.gz"
      sha256 "c77c0265c3d2909e604cf8f29d69be668551a6fbf9f7ea5c09964a42bb78bebf"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.19/amux-v0.2.19-darwin-amd64.tar.gz"
      sha256 "13edb0200ad75c6e1a3fff669f52809c4e2b6564cbb05cb979f73cbafd24bc69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.19/amux-v0.2.19-linux-arm64.tar.gz"
      sha256 "c441b902250fce323995a85d09b89412dcc5ac1f7c4c297f02f8677c947f9b85"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.19/amux-v0.2.19-linux-amd64.tar.gz"
      sha256 "b36e2cf76a5a4455a5aab9261369332f389867b79884a86d8c84dc4d0636a507"
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
