class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.18/amux-v0.2.18-darwin-arm64.tar.gz"
      sha256 "0581c1e7d6d7e78ed75b5e3adcdefa0818c419b87b21a303ada4ed1ac32f2faa"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.18/amux-v0.2.18-darwin-amd64.tar.gz"
      sha256 "a453b320d1074bf777f922e0193e2f30ee2b7cd459759b8d8e4b54d8fdba2aa4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.18/amux-v0.2.18-linux-arm64.tar.gz"
      sha256 "060860fd8de97cf15c65fe720621e170746db44557d1d7a3952c027883d44dee"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.18/amux-v0.2.18-linux-amd64.tar.gz"
      sha256 "4ee953afc68164d1fe37f009195251da5bfc9b0493e4ee1a48b7a396c8a11476"
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
