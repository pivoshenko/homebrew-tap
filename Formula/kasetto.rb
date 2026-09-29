class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.9.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.9.2/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "452fb10e5c4b227abc76e4cfd4d1829ac0e9c3ec0bb837587e756a70f0d4f92c"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.9.2/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "5f0b7be2e76ecd3629da3e99a453382e3b65e95bd4dd84bdd668ec9d5f67c742"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.9.2/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "72091a35ecd04962025bf2e3687da40850935c4aeeb06ce7ae91f2ca82ee7395"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.9.2/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80135f23677d1d0f5d6519e52909e8b0f007b968c5a613ac90ac9c425810a15f"
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
