class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.1/amux-v0.3.1-darwin-arm64.tar.gz"
      sha256 "ed512fdf98e5e89ba9ae5719a231cfb3b0cfd67e1d2672228b6d5a899b7ca95d"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.1/amux-v0.3.1-darwin-amd64.tar.gz"
      sha256 "c955c751273085603964c5b9dd6dac8612f0e81242f92b0bd1f29cd32c923f38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.1/amux-v0.3.1-linux-arm64.tar.gz"
      sha256 "f4ba8d2de1be1e48464f96d1c190b99b5b3e03e471e86f6199270e47e1ef3b70"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.1/amux-v0.3.1-linux-amd64.tar.gz"
      sha256 "df8c99fa13649cdc3f4d0732f3a417350a42a934bf7738f8bfa28530dde2fcf5"
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
