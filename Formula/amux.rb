class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.32/amux-v0.2.32-darwin-arm64.tar.gz"
      sha256 "1a7c74792ad6e62f0e19f685effe0741f22bf77ea7b94c47ddfead5f4182de17"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.32/amux-v0.2.32-darwin-amd64.tar.gz"
      sha256 "f9ae10726afbef747168d1a1aa9f4edf63abafa05e5dd1e36b73875e4de2e7a0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.32/amux-v0.2.32-linux-arm64.tar.gz"
      sha256 "a2c9b8480882fe5209b62de061fa7e2fffb251f0ed24162ee79eb4bc5888cfe0"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.32/amux-v0.2.32-linux-amd64.tar.gz"
      sha256 "8410fad56618866ef9fa188b8f8fd5c84022ff81f2f504d054c649a62aa21638"
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
