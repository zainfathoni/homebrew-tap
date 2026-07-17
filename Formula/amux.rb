class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.7/amux-v0.2.7-darwin-arm64.tar.gz"
      sha256 "c1e84af542ec2b3d2964e4fb9f4fe646b4d6afd4371ac2035b0a414360d5c334"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.7/amux-v0.2.7-darwin-amd64.tar.gz"
      sha256 "c722e52139aa190eda5f7a8cb5c86a41395069a64255e9d65749d6c95b4e0dcc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.7/amux-v0.2.7-linux-arm64.tar.gz"
      sha256 "f5acbe2ea786d5c724ca505715e15c443cb47ae099b393bad6a2c1da3c15a927"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.7/amux-v0.2.7-linux-amd64.tar.gz"
      sha256 "20d078ef0059933d31ccd3ec815328c057f610760e3f2af474db0375c65fb823"
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
