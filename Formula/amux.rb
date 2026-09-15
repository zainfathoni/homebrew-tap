class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.6.0/amux-v0.6.0-darwin-arm64.tar.gz"
      sha256 "91e4b5ff9182d8d77b88fafd8dc1de3ad0b65b158810b55671ce843cde11f532"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.6.0/amux-v0.6.0-darwin-amd64.tar.gz"
      sha256 "77513f66058d3a371227cfd3557fc1ff6875f1785cd6f373c128ce772642f368"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.6.0/amux-v0.6.0-linux-arm64.tar.gz"
      sha256 "69e5c95f9993c830f685a6a1d805ea7aee4bc6332e74ecbcb649cb0c4ce664ee"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.6.0/amux-v0.6.0-linux-amd64.tar.gz"
      sha256 "de1eac398f0356aaac14ec6535d5d9c703c67e8d3b77c8fe37674d7d468ba569"
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
