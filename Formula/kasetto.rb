class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "2.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.6.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "951f44676af4c9decda177089f83d24fce0bf62a168aef91c7f6d67120d8da9e"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.6.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "6157e1023a8b40021d227b81a36ec58bdab69b5fb51369a4e9a1ca0106c768d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.6.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3d633bd2a3578624c7cb17edca9247aa910f1d8b42c138e658ba201662d634a8"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.6.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c328bb5ead9e6836435b36587d901e575769ccd4d93ddf22c1d3a9c4ec556ee"
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
