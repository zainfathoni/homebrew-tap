class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.15/amux-v0.2.15-darwin-arm64.tar.gz"
      sha256 "1dacc02411a42df60ba1f52383006372b8e3738205cc711490e6a74b64160416"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.15/amux-v0.2.15-darwin-amd64.tar.gz"
      sha256 "636e9626c06dc86db2a69949dcd3b19b23dd756ba779008e2967505d1dfbb96b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.15/amux-v0.2.15-linux-arm64.tar.gz"
      sha256 "764002145af3875a6df3468b27b0086ff09a471a58e033a00ad7234f0dcd95e8"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.15/amux-v0.2.15-linux-amd64.tar.gz"
      sha256 "d1cffe1f39970be4285d30947d27b5a5d3933f4240f1fdb98b373c4808828174"
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
