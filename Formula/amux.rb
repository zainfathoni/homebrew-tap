class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.23/amux-v0.2.23-darwin-arm64.tar.gz"
      sha256 "1d2953fb4c31fd23d240030010767e36f4c5159169309c89bff5619fc424767b"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.23/amux-v0.2.23-darwin-amd64.tar.gz"
      sha256 "485fdc2db1a263b74db0ed1d0bad15473a07e4c217923d2570d0c0e14af493af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.23/amux-v0.2.23-linux-arm64.tar.gz"
      sha256 "aca6a71524d386b1e890e31c0061e4d65012835bc8dfd66a6c84b412c8058b54"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.23/amux-v0.2.23-linux-amd64.tar.gz"
      sha256 "145333cba386817a4af2e5407e2a106980dec3a16b442896836b0298f5735efa"
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
