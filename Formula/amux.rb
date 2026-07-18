class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.9/amux-v0.2.9-darwin-arm64.tar.gz"
      sha256 "03204e53d9b10fccd6b8c38fe87f6c4b3a6ef3500627205477b57dd4620715d1"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.9/amux-v0.2.9-darwin-amd64.tar.gz"
      sha256 "a9244cbcf6f0ea53cc17126b4ed6ee71a3b155be44124e317b0d6b67eeb7acc0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.9/amux-v0.2.9-linux-arm64.tar.gz"
      sha256 "eca3d92e508b42d9e90110f8d9ff7621b5e0e6f2da53b2916a5a23794a0f7fbc"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.9/amux-v0.2.9-linux-amd64.tar.gz"
      sha256 "c363506a52fefbf278c41e9f6280ff07bc33edc386622c9f778fe8563e4cb37a"
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
