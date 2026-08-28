class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.3.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.8/amux-v0.3.8-darwin-arm64.tar.gz"
      sha256 "4b238d5a914a4d2154dccf3f46e3bfd5b5c7e6c4227d3787bb7fb281982bb3e9"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.8/amux-v0.3.8-darwin-amd64.tar.gz"
      sha256 "bdd1ee0626a4cee352612a69d52f0feeb2aed21d42577c3dc60b4c18be7a2eb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.8/amux-v0.3.8-linux-arm64.tar.gz"
      sha256 "8bf52e69592d14aa36e4a47293263ff609eafbc088996a279c5d94ea939db37d"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.8/amux-v0.3.8-linux-amd64.tar.gz"
      sha256 "bf9f9f3b04020661479865d466e794c875c5fb5a06831b3474a3f3f647f4f457"
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
