class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.0/amux-v0.3.0-darwin-arm64.tar.gz"
      sha256 "8338378cf41f6fdd11538693ab842c34b11cb941672ccc1b524e03abe5d480c7"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.0/amux-v0.3.0-darwin-amd64.tar.gz"
      sha256 "5e3f0292dfed68cd11ece0a5af2eea77e733afa75b160db54851b2514e615cfc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.0/amux-v0.3.0-linux-arm64.tar.gz"
      sha256 "58ee810495ccd1f5beffdf07dcdfb8af5cc012684b92c80efc565b3b21877a4c"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.0/amux-v0.3.0-linux-amd64.tar.gz"
      sha256 "99f98ad5b959b242ad8f9ebad2d6405b8c3a664c0ba2090c5cbbc07bd2cc0f70"
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
