class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.17/amux-v0.2.17-darwin-arm64.tar.gz"
      sha256 "6d29e6d1f672b731610d60d433ff7b4eaf55b0baf42a073ae1a40257cfb969da"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.17/amux-v0.2.17-darwin-amd64.tar.gz"
      sha256 "e712cc9f3d583ca10366e2f9dba2a50c90c1b7e40ef60bea35a33694d5c4bc9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.17/amux-v0.2.17-linux-arm64.tar.gz"
      sha256 "6939d614536cf8cd2725507ddb36c35520f08ebe3b8c4268fbbc71d97f834679"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.17/amux-v0.2.17-linux-amd64.tar.gz"
      sha256 "89d533b0efa32bad1d3dd40fe58876048da2048374b39a6d7bce4cae9e8afaba"
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
