class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.3/amux-v0.3.3-darwin-arm64.tar.gz"
      sha256 "e7ad072bfd4cfd8dd7e7626f9811b5a6e4622cfc31d9d6938b8f7b62872deb8c"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.3/amux-v0.3.3-darwin-amd64.tar.gz"
      sha256 "16ed4a9485f0c3140eeed2225aad9141a672567a880e5e904bafc73cd5640eff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.3/amux-v0.3.3-linux-arm64.tar.gz"
      sha256 "f9ef512952556e296516af853d5e2fac3e76e7b0e1fe4cbfe151320bb12d51c5"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.3/amux-v0.3.3-linux-amd64.tar.gz"
      sha256 "66efa69a90c0d828a5112ae0b776e4beda52c485acf9c010b47afd639f31ccf8"
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
