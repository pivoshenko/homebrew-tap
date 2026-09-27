class Musicforprogramming < Formula
  desc "A terminal player for musicforprogramming.net, written in Rust."
  homepage "https://github.com/pivoshenko/musicforprogramming"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.2.0/musicforprogramming-aarch64-apple-darwin.tar.gz"
      sha256 "437866f0b8d27f9330a771fa11896117f7835d14343c699664bf0fab79f71d20"
    else
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.2.0/musicforprogramming-x86_64-apple-darwin.tar.gz"
      sha256 "043743873cf389abae1288af5c6018981cbb3f37472c4608b3b1de30674f3bdb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.2.0/musicforprogramming-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6e3199e4e6d65d15244285e4ff1ca59b0f396d039def38f886c756f9a3d1d0c9"
    else
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.2.0/musicforprogramming-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eda2e347f0647077253af204a98bc0e53998ce1db07fae244cbae7c6a9abe6eb"
    end
  end

  def install
    bin.install "mfp"
    bin.install "mfp-daemon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mfp --version")
  end
end
