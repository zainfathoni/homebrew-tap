class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.1/amux-v0.2.1-darwin-arm64.tar.gz"
      sha256 "ee3cd27b20d0a098dd801f40b66666fae1a4a5fb3bffbbad16e94e31a010c6a4"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.1/amux-v0.2.1-darwin-amd64.tar.gz"
      sha256 "0d2cec09cb6fef8b8b6fb2b677dfc522f64ed7a86744f8708ac6f1244a0c682f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.1/amux-v0.2.1-linux-arm64.tar.gz"
      sha256 "4e3a32631d95609de39613e31c000d9e3b97c70caa0c4bcb5bb500dd6b32808c"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.1/amux-v0.2.1-linux-amd64.tar.gz"
      sha256 "c89df96a602d06200544561fac7ba8701c0718f2f0f7e340b6e42bb262e2161d"
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
