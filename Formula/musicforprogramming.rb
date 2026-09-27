class Musicforprogramming < Formula
  desc "A terminal player for musicforprogramming.net, written in Rust."
  homepage "https://github.com/pivoshenko/musicforprogramming"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.1.0/musicforprogramming-aarch64-apple-darwin.tar.gz"
      sha256 "93ec781b17b5613b94a8a425db6b9e429c167277a1c16030032ac4b67f9bafae"
    else
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.1.0/musicforprogramming-x86_64-apple-darwin.tar.gz"
      sha256 "1073bbdcb3683fad58a38167eb6cb395191025d95f0d79b9dd4313ae5d69f71f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.1.0/musicforprogramming-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3c897959a3691569645aada01b602f0d46a4d5676c25584bfa27fcb0e3eb2f0"
    else
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.1.0/musicforprogramming-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c6733b470fc19bc62ac1d4c2499de29e18fa0b968be2a0e921024c6a542361f"
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
