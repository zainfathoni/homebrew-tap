class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.12/amux-v0.2.12-darwin-arm64.tar.gz"
      sha256 "d06160c18f7cab49319e004db7188a2a3568b72fca9ff8e054a67fdb1d11cb3d"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.12/amux-v0.2.12-darwin-amd64.tar.gz"
      sha256 "bb6fa64006284b362a64c2077b6a9a5a360e8e274041b30865418d178456d390"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.12/amux-v0.2.12-linux-arm64.tar.gz"
      sha256 "f7218e21a4e712d39cd500e5e6b96a345e0192c966998c3f8806e5255c226608"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.12/amux-v0.2.12-linux-amd64.tar.gz"
      sha256 "35f460a27a09ffbd0de045295420758b817ee7135ff32deb86d463cf779930a1"
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
