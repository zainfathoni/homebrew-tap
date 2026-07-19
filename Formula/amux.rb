class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.13/amux-v0.2.13-darwin-arm64.tar.gz"
      sha256 "6820897b8f6e4cdb220a268e287893114933572c9e962cc0e9fbdb64b10e15e8"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.13/amux-v0.2.13-darwin-amd64.tar.gz"
      sha256 "555a9e94033dc4f50f5c050db11c0b3bc21407069b6f6bfb30f51f3d4640197d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.13/amux-v0.2.13-linux-arm64.tar.gz"
      sha256 "4eb8ae7cd02cea926d6fe1e45870643fda5e2f23710aa6faae378611187c8db8"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.13/amux-v0.2.13-linux-amd64.tar.gz"
      sha256 "510ecb5fc0f821c38ca801039ea6fa4d5ef37f474c05cfb02a1660bc25bb2f1b"
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
