class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.31"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.31/amux-v0.2.31-darwin-arm64.tar.gz"
      sha256 "10bf4b468a6e50c8785f69888afc3e3b95713a41371154b7d32be9d106b436e1"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.31/amux-v0.2.31-darwin-amd64.tar.gz"
      sha256 "7a1cc92783af0c540fc848fd8e60d7cede0dbf20a5b62fa49d1c1c0ff6dc57c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.31/amux-v0.2.31-linux-arm64.tar.gz"
      sha256 "518f0725450ebd80712201cf22c71ae7b8c6505d9631c8b7b507ca3f2b178c12"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.31/amux-v0.2.31-linux-amd64.tar.gz"
      sha256 "8521a4ef43323b5e8434333042ac0e3fcfdd4411e5f759fa53eba0851e3d8678"
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
