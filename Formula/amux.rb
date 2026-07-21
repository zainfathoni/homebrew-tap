class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.26/amux-v0.2.26-darwin-arm64.tar.gz"
      sha256 "a91b682e5651cc6ad5b0af5b73cb82c72b16987b75b0b81bbf86b614ff80b558"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.26/amux-v0.2.26-darwin-amd64.tar.gz"
      sha256 "3048a03fd8177cbfb4a13914e96e5ceacc26bcaeacc722856ad04ece0c40b2f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.26/amux-v0.2.26-linux-arm64.tar.gz"
      sha256 "fe5e424028f465dcb54f5901705b38f04109d236b883a1b3cec0e68d96259923"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.26/amux-v0.2.26-linux-amd64.tar.gz"
      sha256 "fc548f4c35c0400c4090149700a4d51b48db0eafe80663c3696f5c75c3c5f01f"
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
