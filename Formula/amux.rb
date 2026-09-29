class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.7.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.7/amux-v0.7.7-darwin-arm64.tar.gz"
      sha256 "e9eeb7143becab2b4e1d83168e00fbb1fd73c26eb75fa8e38f49ad01a327f19e"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.7/amux-v0.7.7-darwin-amd64.tar.gz"
      sha256 "1f9865dbcd2abdeaf02d3198946d14279775ee9ee8f56f1c725ffb955d22b723"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.7/amux-v0.7.7-linux-arm64.tar.gz"
      sha256 "e15c7d11c7227a25e9da255fda442fcf2776cb486500c713509850bf1ccc2d45"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.7/amux-v0.7.7-linux-amd64.tar.gz"
      sha256 "7e379fa270cf9390d7dab8402979dc9829aa12d1f190aa356a1c7e8b18e3bbef"
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
