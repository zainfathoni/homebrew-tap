class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.14/amux-v0.2.14-darwin-arm64.tar.gz"
      sha256 "f049320b7df3079754428c66abab3dead441c276a8a6427472aea247ff163189"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.14/amux-v0.2.14-darwin-amd64.tar.gz"
      sha256 "320063a4cecf21c5f7e87f4068613b6f66bce0617d3be6bf16153686ffeef9ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.14/amux-v0.2.14-linux-arm64.tar.gz"
      sha256 "a4c81b9bef11bf86a8123105e0bc6f13fcdf7e6f25dd53070117768a3d4db7fa"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.14/amux-v0.2.14-linux-amd64.tar.gz"
      sha256 "1b58d1c819f09f394de042501f23dce1624bf77c931d25522333f0d86c846554"
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
