class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.3.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.10/amux-v0.3.10-darwin-arm64.tar.gz"
      sha256 "f4cddb2736a974e67a5862204c7a481c52ad9f4b3b0f97b85c81b96e2aeafdf9"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.10/amux-v0.3.10-darwin-amd64.tar.gz"
      sha256 "b410fcfd483f7f09b460c7080cc26a9da83e8f68571396c5f374d85f4a7ed96c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.10/amux-v0.3.10-linux-arm64.tar.gz"
      sha256 "61d1e6c1edb3f09c766d463fd74a7bf3017bf26cc97623a294137fc3e1c4e850"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.10/amux-v0.3.10-linux-amd64.tar.gz"
      sha256 "40ab642aba064ebb5e39852f9e7078cfe75db9e0112248d6d2e57ac5fba6f50c"
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
