class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.1/amux-v0.7.1-darwin-arm64.tar.gz"
      sha256 "fc73012c03d9eece0c688b87cdbfcbe6fbbfebb139c514698abe6af80343d976"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.1/amux-v0.7.1-darwin-amd64.tar.gz"
      sha256 "96511626b0682d31960de80044177190dc1750d09fc7d2d6126e11c377da9799"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.1/amux-v0.7.1-linux-arm64.tar.gz"
      sha256 "3acb11b262f05255f6d4bdfb3af0bf7511d4b1f7738aa8daf83db309a804a463"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.7.1/amux-v0.7.1-linux-amd64.tar.gz"
      sha256 "7b4f6990911c75d4d7928d34d1341a9567334b115d877df748309b0863a1d170"
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
