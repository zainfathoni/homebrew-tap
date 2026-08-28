class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.3.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.9/amux-v0.3.9-darwin-arm64.tar.gz"
      sha256 "c4dca5a39dd88654c8eea8855ae3aaf22f3beeed40d8e9e4f3f97280d7a80691"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.9/amux-v0.3.9-darwin-amd64.tar.gz"
      sha256 "d9492c700ff9bbe18eba23a7be71976b2943b71df2e5f939c31446a974b97094"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.9/amux-v0.3.9-linux-arm64.tar.gz"
      sha256 "e69bfa0b9dd2fa1cba993c95de2527a67795470999ce6b4f0e0073954fcc3338"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.9/amux-v0.3.9-linux-amd64.tar.gz"
      sha256 "e05fc7eb2a4f0ff86a50c05aab5c08f579e44b831e585884f7c12e205312b123"
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
