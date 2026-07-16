class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.5/amux-v0.2.5-darwin-arm64.tar.gz"
      sha256 "7ab45a469aac2b8ade04c640118e23fd4bdbeea23e57889fe6a2719d259ff6f5"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.5/amux-v0.2.5-darwin-amd64.tar.gz"
      sha256 "996cd30690ae0b60f3af00441ee85b9563e447dbe99f3ecfb5c4fc539c064612"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.5/amux-v0.2.5-linux-arm64.tar.gz"
      sha256 "6de06bd01ad12316480204f50a655e123a8c6a3b228dedb2025f9de04f33476a"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.5/amux-v0.2.5-linux-amd64.tar.gz"
      sha256 "14d80a05db857dbb8e8c93b09daf2726193ae928f727ad0ce47a439c1ac48118"
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
