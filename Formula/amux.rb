class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.7.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.9/amux-v0.7.9-darwin-arm64.tar.gz"
      sha256 "cc6e9cde84b427e108ebb4180ef58247f5b5cf0110b39ba09312b8ff74e15661"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.9/amux-v0.7.9-darwin-amd64.tar.gz"
      sha256 "a965df8fd4bdb2d587e36614f65f5ceccdf82defe2c4138e3f8b7bed50c0c713"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.9/amux-v0.7.9-linux-arm64.tar.gz"
      sha256 "42a5f2841aafe8385680b5673b8f9e35f8759e9b5ecd670a1974d164f30dda1e"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.9/amux-v0.7.9-linux-amd64.tar.gz"
      sha256 "328667eef482c7cb46da35e614245cb73ff4e51519a3f738547840ee19bcc709"
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
