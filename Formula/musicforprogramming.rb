class Musicforprogramming < Formula
  desc "A terminal player for musicforprogramming.net, written in Rust."
  homepage "https://github.com/pivoshenko/musicforprogramming"
  version "1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.2.1/musicforprogramming-aarch64-apple-darwin.tar.gz"
      sha256 "03035afdac8531dc62a98b35d8bb94d731886769e81dfa097e79f431e768b49c"
    else
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.2.1/musicforprogramming-x86_64-apple-darwin.tar.gz"
      sha256 "5e4af6f8341f2720f9c7153e7ebb0c12830b9c3f09205058e90a12fa0aec09d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.2.1/musicforprogramming-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e216137d8f5820b1d5ac56163083e3c3732ba578b220a1737e0287858a1d9a4b"
    else
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.2.1/musicforprogramming-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c2253e16dfc76f59ac80f37c4002394b438bed697cc8e2eb390a08f87b4aa19"
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
