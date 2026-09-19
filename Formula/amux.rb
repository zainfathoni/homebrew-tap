class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.0/amux-v0.7.0-darwin-arm64.tar.gz"
      sha256 "3b32e752955632e1fb6ac944eecacd4bcc6cb7dc41a44a0768410ffc954935c2"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.0/amux-v0.7.0-darwin-amd64.tar.gz"
      sha256 "1117cb70ba88929dafdbfbbd8fae0111a2aa84ae62f8255a594adc996ee0c301"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.0/amux-v0.7.0-linux-arm64.tar.gz"
      sha256 "07a3ebc05ac4716416db8dda36599e8696d0c1fb6b05a50f0c52f74ef0ee44ff"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.0/amux-v0.7.0-linux-amd64.tar.gz"
      sha256 "91a9aa51fceaf2ce05099ef1e8473d001f9f674ceab6f16080a8a6b8d72555db"
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
