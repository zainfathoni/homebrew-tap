class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.6/amux-v0.3.6-darwin-arm64.tar.gz"
      sha256 "5602ab255c234d8eddb0d9a069bd3d20e993fdf1b4f2c40df4d1f0ce00b0c65f"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.6/amux-v0.3.6-darwin-amd64.tar.gz"
      sha256 "44c877ac9350e5a370280d640d4f49a6a95dc6c6a6f33ec39f521dd33a7d71b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.6/amux-v0.3.6-linux-arm64.tar.gz"
      sha256 "771338a7c21d821f8da13e7e7019cf188d68b605c5f6b93481a50a8586aab4b8"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.6/amux-v0.3.6-linux-amd64.tar.gz"
      sha256 "de3087c92affc300046debb7395cdcc3f56dbeb9a69e14c74fb2bc48c071c813"
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
