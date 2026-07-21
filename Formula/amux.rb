class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.27/amux-v0.2.27-darwin-arm64.tar.gz"
      sha256 "2b9f4cb68fcd9d3710afe8519905886a01cc45f894d9a5ab61d1e0f9094ead0f"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.27/amux-v0.2.27-darwin-amd64.tar.gz"
      sha256 "1dd58136725f302cd0b8998f6116d37cc3726519a7f7bd81e21684ffe060c8bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.27/amux-v0.2.27-linux-arm64.tar.gz"
      sha256 "3d04444c4a13c5c504895a68e7a19d1a2710bca83c144b1486c69770f678a9f4"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.27/amux-v0.2.27-linux-amd64.tar.gz"
      sha256 "6c64e6383528d9679e0851379ea38a4cc6ae36e1280366f3d6eff8e1d5dd5f05"
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
