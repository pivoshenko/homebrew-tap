class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "2.8.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.8.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "4a2127a32cfd76ef8dacebbad102dae6659cedadfbcc1b5999fae876e232bb66"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.8.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "b27c4e31490f056168ad64d89952a65879cc85a896fcc3c074f277c21b7a2ff3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.8.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "717385361ac9ef8c74e9288e089156f99bc5b64d1feda7f76198ed8d8196502b"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.8.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d21c31cf317af0b983ce3971a9c15cb9218d16561adc8cba6446fa64a767e83"
    end
  end

  def install
    bin.install "kasetto"
    bin.install "kst"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kasetto --version")
  end
end
