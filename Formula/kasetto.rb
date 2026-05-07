class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "2.6.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.6.1/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "4451c88cc1d5ae09b1b94ad9419a702291e089fdffd24c0f551d8ff72d373c32"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.6.1/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "c594e99423051461665f7c7a81b4828f762585a8b588caaf0b7c466f2e9690f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.6.1/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a549440db7f71d269f20f7943bcd937b17844db9d7e567c011636d732dc241b"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.6.1/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d5270d688b13fc36194af54fd9ea822b30b5b1bd3f78d4ebad32b294d95f545"
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
