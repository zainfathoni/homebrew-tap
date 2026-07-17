class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.6/amux-v0.2.6-darwin-arm64.tar.gz"
      sha256 "53ecbc37630e7864162ed6b4037270fa2b39844d7925c783feb97f0c5f4662a7"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.6/amux-v0.2.6-darwin-amd64.tar.gz"
      sha256 "f801eca284c03fba98f56d69ab61edd1c6cfea0020efd5fdac3b09a23809512d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.6/amux-v0.2.6-linux-arm64.tar.gz"
      sha256 "ccb60977086bd10a4cf616b94fa6723b0c560c0f33f12e4c5405dbff33e6521b"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.6/amux-v0.2.6-linux-amd64.tar.gz"
      sha256 "03ae7feb266c448c28f47809db1bc4acc580cdf38d858521d37c140f9099df03"
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
