class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.5/amux-v0.3.5-darwin-arm64.tar.gz"
      sha256 "ce18a2b4b0e5e64ce6dd9302ad0e68e58b316c743faaa98674007bce54f0562c"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.5/amux-v0.3.5-darwin-amd64.tar.gz"
      sha256 "7f1a28c947fdd229fccf308e009cc7db3a517360d95f9d4b0c6a2ae27d33ae3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.5/amux-v0.3.5-linux-arm64.tar.gz"
      sha256 "edf43b9f981b476cfcae8218105b93ea145b48cd7b7ebfc84f049222568423bb"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.3.5/amux-v0.3.5-linux-amd64.tar.gz"
      sha256 "3073a36d53cb597db8410724061538d72bcc7a5fbf22eb5b09e212f6c02291c2"
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
