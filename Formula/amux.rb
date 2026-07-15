class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.0/amux-v0.2.0-darwin-arm64.tar.gz"
      sha256 "429bd231f9d63cf8048e66937ea009cdc8835b1c6416296a13d2ae705c906078"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.0/amux-v0.2.0-darwin-amd64.tar.gz"
      sha256 "3a28b4a6a5bc7c908e77c10cf7d9e725a148234daf8e90d4606cfab9e99c11b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.0/amux-v0.2.0-linux-arm64.tar.gz"
      sha256 "52060d961d2dfc106364180ec1dc9c5216abb88c9518cafcf902b081b2cc255a"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.0/amux-v0.2.0-linux-amd64.tar.gz"
      sha256 "e20319eeb44a69808ba2eb0178439b3149d591f240321ee87705fa0ace9ecb2e"
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
