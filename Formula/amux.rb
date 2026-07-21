class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.25/amux-v0.2.25-darwin-arm64.tar.gz"
      sha256 "ee6f830d0e7733e1d97805d6a5673642c518bd29f935f983e23b2bd5dbabc1c7"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.25/amux-v0.2.25-darwin-amd64.tar.gz"
      sha256 "888d009662670d3cb0928d019c9194c74ac67966b6f80a135e3d24483df15d66"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.25/amux-v0.2.25-linux-arm64.tar.gz"
      sha256 "d8974972b9775f717fff4ffbfa079d834c1c095a0b632a231e3a57b131c3a652"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.25/amux-v0.2.25-linux-amd64.tar.gz"
      sha256 "95e04f3fc7e1fdd011aee8be8be6cba22ba54dfd492bfccd2d20f4f0624ee93d"
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
