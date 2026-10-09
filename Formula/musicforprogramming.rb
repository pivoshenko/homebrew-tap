class Musicforprogramming < Formula
  desc "A terminal player for musicforprogramming.net, written in Rust."
  homepage "https://github.com/pivoshenko/musicforprogramming"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.3.0/musicforprogramming-aarch64-apple-darwin.tar.gz"
      sha256 "f55d8e628f680af8f8f17738ca91c3ab007c51f5574201e6935083711127305f"
    else
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.3.0/musicforprogramming-x86_64-apple-darwin.tar.gz"
      sha256 "ccf8fa9946ee4a873e91f42632f051c162bb1331bfa67768c30393b05305ca93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.3.0/musicforprogramming-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d28b863687eefb85c4461a969d3d3f1e9a6694326cfde5e0b13c68e3e81c1ccf"
    else
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.3.0/musicforprogramming-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "799b6c9bfdd87a04c73df95ec623246996e3b6ec0ef950206c35d4487b1bb888"
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
