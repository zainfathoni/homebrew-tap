class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.28/amux-v0.2.28-darwin-arm64.tar.gz"
      sha256 "fc2d370f7a6b518420f626303489e7e29c60ab5bf621894b26d91f651bbba649"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.28/amux-v0.2.28-darwin-amd64.tar.gz"
      sha256 "19248075dc40d17ded6413046ee156158a8efba7b873a537cbe67c9edf87d3ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.28/amux-v0.2.28-linux-arm64.tar.gz"
      sha256 "a8fa708f79a9e48ea70d17a2f156ddd3c95e837009de4729afdee0d105cf37ea"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.28/amux-v0.2.28-linux-amd64.tar.gz"
      sha256 "53a303c45e99ecccd11bfc694a8c02f749565ed5df09e029759846f3957df936"
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
