class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.1.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.1.33/amux-v0.1.33-darwin-arm64.tar.gz"
      sha256 "8b7ea206eb5f4aff559823d92a194105f24aa5e0b0b8e258e50bd91c1b7cbccd"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.1.33/amux-v0.1.33-darwin-amd64.tar.gz"
      sha256 "7a24d190ba432077fabed1655b987fc828175d5b04bebc1cbb87cf870d6ad0e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.1.33/amux-v0.1.33-linux-arm64.tar.gz"
      sha256 "57fd7fe64f068589933dd5143307e1986c228c2f96322c5b562f01ca91011301"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.1.33/amux-v0.1.33-linux-amd64.tar.gz"
      sha256 "963dadbf53344d84a7b773ad6ff3f6aea4bc5ce9f0245b46ee302a7942f16623"
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
