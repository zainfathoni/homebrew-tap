class Amux < Formula
  desc "Restore Amp tmux workspaces from a simple TSV config"
  homepage "https://github.com/zainfathoni/amux"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.3/amux-v0.2.3-darwin-arm64.tar.gz"
      sha256 "88333a18f3244974a72ddb191b09a70cb614d0eb49ee4cf4cd194b531511392c"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.3/amux-v0.2.3-darwin-amd64.tar.gz"
      sha256 "8698ebafafab9df718b3acb5520d796919533460905ebf72365775ec56021f10"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.3/amux-v0.2.3-linux-arm64.tar.gz"
      sha256 "b6f9ed2b44a904349481b326180c0425ba29eb43ef6f0074eddeae4e50ea6add"
    else
      url "https://github.com/zainfathoni/amux/releases/download/v0.2.3/amux-v0.2.3-linux-amd64.tar.gz"
      sha256 "2493a16735d594395d46507aa380924dc48baef51f1c1f47ca0e5287bcd542b6"
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
