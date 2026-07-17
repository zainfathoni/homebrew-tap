class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.8/amux-v0.2.8-darwin-arm64.tar.gz"
      sha256 "1a6db5c53375305b3fed3bbfac807c1caedda0218b990d6a472fc1ca5bc3aa06"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.8/amux-v0.2.8-darwin-amd64.tar.gz"
      sha256 "13b211664f9c1a9917400e0d38647c10c03d3eb7cfd1893b86c78aa02a520e69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.8/amux-v0.2.8-linux-arm64.tar.gz"
      sha256 "3eefbe3532b305c18c7827e2945e7f36c480de55c59db27d9e4381ad40d9d099"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.8/amux-v0.2.8-linux-amd64.tar.gz"
      sha256 "113894a932b36ab341fe38049bae253c3c94d911e59f3ad8320013ee242eb013"
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
