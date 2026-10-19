class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.7.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.8/amux-v0.7.8-darwin-arm64.tar.gz"
      sha256 "28912f0adfdc6f155f837ddc2ea2f608cd3eb498706881b385e649a74b61def5"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.8/amux-v0.7.8-darwin-amd64.tar.gz"
      sha256 "6c91b63736b45ec7104146a849ab44b9a35d90eed072be1c845f7cfd3765aee7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.8/amux-v0.7.8-linux-arm64.tar.gz"
      sha256 "de536290e9b96dfdeead5cbb7108f0f94e5a79b8ed4c71b109b03439ed97522f"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.8/amux-v0.7.8-linux-amd64.tar.gz"
      sha256 "2c89228f549cc1f967981a9eba4e8fb4318acf98c940ba931eb9b83fed942848"
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
