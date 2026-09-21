class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.3/amux-v0.7.3-darwin-arm64.tar.gz"
      sha256 "85c720cda1bc161bf0c17adf111798dd278f8c992279aab21f10d7651b6277c0"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.3/amux-v0.7.3-darwin-amd64.tar.gz"
      sha256 "ecb06ee972697c69f87c539e8402d700789637b3b93b246182d639e0b5f890ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.3/amux-v0.7.3-linux-arm64.tar.gz"
      sha256 "cb94cbd6ce50fdb85791615e4b956d5051711a27124bffe62e988b541563ff71"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.3/amux-v0.7.3-linux-amd64.tar.gz"
      sha256 "8f4a64a2776c5301525f704e4d8936f4ad0741ee94ec4ec1d4b41b8540991426"
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
