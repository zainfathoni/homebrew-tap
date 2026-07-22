class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.30/amux-v0.2.30-darwin-arm64.tar.gz"
      sha256 "ddbf11c5a9bf4cdcb201ed2ab42e24cb99741ac795b6a7e198e6c81a70b05549"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.30/amux-v0.2.30-darwin-amd64.tar.gz"
      sha256 "32b705c7a350bc05ffacc7568ee10abf437f9e9f0341df3cbd4a688ad871206f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.30/amux-v0.2.30-linux-arm64.tar.gz"
      sha256 "384f09fea4a5a96bd01ecc819b5a9d594c9b89652dd2e7b2c967979d429d0740"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.30/amux-v0.2.30-linux-amd64.tar.gz"
      sha256 "62eedfe8e150d891456102c325f9cc1af5e7effe7430d616e98273b3ea79df46"
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
