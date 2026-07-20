class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.16/amux-v0.2.16-darwin-arm64.tar.gz"
      sha256 "84ada760876e4583ba2e0aee76940aa4a359a120afbb81b68d0518367030935f"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.16/amux-v0.2.16-darwin-amd64.tar.gz"
      sha256 "dc182e24c3879a4f6a59caebeb9796b9151776a7aa8e022ac58b88124f77b1fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.16/amux-v0.2.16-linux-arm64.tar.gz"
      sha256 "f04da35da8853cda68d81ef06a41f1a698cc2627ab40de3259205d1fbdb67e1a"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.16/amux-v0.2.16-linux-amd64.tar.gz"
      sha256 "e8bf5aa46eee7522cbc90ff753abf6c95ee048f2f8f5bd76a9f09d95b8b36ab3"
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
