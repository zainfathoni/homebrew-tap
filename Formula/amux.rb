class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.22/amux-v0.2.22-darwin-arm64.tar.gz"
      sha256 "ce39ceb114ddb69d856228e57ebb9db73bde5919a6e93989d63adfb3d7bbf740"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.22/amux-v0.2.22-darwin-amd64.tar.gz"
      sha256 "68451291a3ad4d466b59e23538b60cee5ad7c05594c166163007b103bb63c074"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.22/amux-v0.2.22-linux-arm64.tar.gz"
      sha256 "df4958fadc3ca7402f4b66502c050be21a061e3951910bbbb0c78eb580af9f20"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.22/amux-v0.2.22-linux-amd64.tar.gz"
      sha256 "169cd918b231dfb7b71b9aecc320c953fbe797381ef0f40ed301126100ab22d1"
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
