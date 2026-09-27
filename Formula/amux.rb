class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.7.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.6/amux-v0.7.6-darwin-arm64.tar.gz"
      sha256 "95abb4bf306339c1d2467b3977c5f77372c296f9fd0ade9cac88a311027f666e"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.6/amux-v0.7.6-darwin-amd64.tar.gz"
      sha256 "81d6c34b07faacb83fcf4efa5a9a14dc43d9bca583e0b29ea4328fa5f8c7e632"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.6/amux-v0.7.6-linux-arm64.tar.gz"
      sha256 "1c66a45b9577159f53c04dcfb987671827fc6e6732d805b8180378483ee0ef0e"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.6/amux-v0.7.6-linux-amd64.tar.gz"
      sha256 "84dfdbe454a52ace46be29b94dbb60039e8962d059bc73f8dfdfc108bde7410a"
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
