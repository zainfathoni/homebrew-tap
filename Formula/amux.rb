class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.4/amux-v0.2.4-darwin-arm64.tar.gz"
      sha256 "909c5e4bd32997007b9d8fcda442cba01a706058279047c997406465171fffcc"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.4/amux-v0.2.4-darwin-amd64.tar.gz"
      sha256 "71281e031675a1e332e22af38e9ad951da01041068fad31c19f04d01a4352571"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.4/amux-v0.2.4-linux-arm64.tar.gz"
      sha256 "22d5ca8a2c16a08348d910d6c098064bdfcad52058a70fb30f17c2e6e50104a6"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.4/amux-v0.2.4-linux-amd64.tar.gz"
      sha256 "7cb931c4b334ceb61d4b765ddecec0cddbb3a5c791fc9e7a5506ad19545e386e"
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
