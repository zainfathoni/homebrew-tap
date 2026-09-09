class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.5.0/amux-v0.5.0-darwin-arm64.tar.gz"
      sha256 "b9771e2de3c9b3a5d07a1bd6b1784a1c785ba90063c7c5a4d149b18d799672c7"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.5.0/amux-v0.5.0-darwin-amd64.tar.gz"
      sha256 "62418bc4ee66133d6c131487873554432178944ecf11bddebad1fd2020a07662"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.5.0/amux-v0.5.0-linux-arm64.tar.gz"
      sha256 "c86ece9989def389219cf8aea29728bce1d84f4c18e442c00d486cdc9e7cbfce"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.5.0/amux-v0.5.0-linux-amd64.tar.gz"
      sha256 "04d7694a4c45fb8fa3720337fce8a1c653c7ef11e3a4cd37de1be8a1623c0872"
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
