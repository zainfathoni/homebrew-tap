class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.11/amux-v0.2.11-darwin-arm64.tar.gz"
      sha256 "d6c571f063c88f93fe297c50971f5565cdce725361868a95cd62e81561200389"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.11/amux-v0.2.11-darwin-amd64.tar.gz"
      sha256 "5a7c7a1fb802957950605b050d65f62609dde62e22caf77ba7a6ddb027458425"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.11/amux-v0.2.11-linux-arm64.tar.gz"
      sha256 "8d26a2646c688c7473a55ea906aac73042b7832146443a13dfd3d2fdc86f0fa3"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.11/amux-v0.2.11-linux-amd64.tar.gz"
      sha256 "e9479400e4e9b95b03e1c452c3a1e7164db46b984a13c72b56c2d8c8827ca5a3"
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
