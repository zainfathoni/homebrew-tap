class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.7.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.10/amux-v0.7.10-darwin-arm64.tar.gz"
      sha256 "a1298947a0b4f19a9aa4150e073888fc076dd68ec012564570c098ae0186c79c"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.10/amux-v0.7.10-darwin-amd64.tar.gz"
      sha256 "4cdc7d25c6a16a179ea2d94bea1bcf0c338738d2d1a46e620b1ebebf29c1fd40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.10/amux-v0.7.10-linux-arm64.tar.gz"
      sha256 "0ebc1c619ac4b3353488f6236dfbb7def1b153cbc332a2bec3443866d308fa5f"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.10/amux-v0.7.10-linux-amd64.tar.gz"
      sha256 "15510a355fd6cb590d94c953f586935b8c52521f8f223d72e19cd0fc4b0dfe8e"
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
