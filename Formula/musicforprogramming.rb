class Musicforprogramming < Formula
  desc "A terminal player for musicforprogramming.net, written in Rust."
  homepage "https://github.com/pivoshenko/musicforprogramming"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.4.0/musicforprogramming-aarch64-apple-darwin.tar.gz"
      sha256 "dde074bcd3a14a80b07f8b7f3ef9aa43fdd0538dd8afd865cc95ec6b087b4ef6"
    else
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.4.0/musicforprogramming-x86_64-apple-darwin.tar.gz"
      sha256 "b2da5d297a2edf3b3971a177bb9431004315f8869308984ddf0d78e0c4f1c58e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.4.0/musicforprogramming-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2d10a63e3413c379af9ad3b4b08fed28dccb2361b048326c5c063b8419edad32"
    else
      url "https://github.com/pivoshenko/musicforprogramming/releases/download/v1.4.0/musicforprogramming-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "377d70dc1c6723303207cda51d7bd9751d75b6143001d69d545604cf448d9114"
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
