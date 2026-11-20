class Musicforprogramming < Formula
  desc "A terminal player for musicforprogramming.net, written in Rust."
  homepage "https://github.com/pivoshenko/musicforprogramming"
  version "1.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.4.2/musicforprogramming-aarch64-apple-darwin.tar.gz"
      sha256 "5aaedf57c109c21518bb6c25e566123cf0110951d57ceca74f6e1397ad049abd"
    else
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.4.2/musicforprogramming-x86_64-apple-darwin.tar.gz"
      sha256 "e201834153060319fbab4b6469bb819901857ec0cdce5da21fff63b52c992b9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.4.2/musicforprogramming-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "41f47fd0a9dc29881a58dbdbe9521abf0f66038c1a92abcd950a5afdc365106f"
    else
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.4.2/musicforprogramming-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "be6193be5305bce59141ec2c10a57eaae2e36cc2bdc9c66178f1e2ef3c30d9c6"
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
