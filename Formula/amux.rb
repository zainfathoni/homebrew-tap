class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.7.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.5/amux-v0.7.5-darwin-arm64.tar.gz"
      sha256 "6669b0a3eb17b2f04a27baf483adcdc175057837b06794393905ac66dfbf1565"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.5/amux-v0.7.5-darwin-amd64.tar.gz"
      sha256 "b6a18074d059c890656c3d17b51b4753400d6c1d5528dc4d24d4880784a769a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.5/amux-v0.7.5-linux-arm64.tar.gz"
      sha256 "55cdff01d7e8e0d192cce6cb9ed59accab1143866db723ea1e2699b62d0eddd0"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.5/amux-v0.7.5-linux-amd64.tar.gz"
      sha256 "1dc0bed598ccc50c16e5bfc511d791a225b262dbe54b2e12f37ae2e785dfca77"
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
