class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.3.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "18028e3ac19947782cedd97f7cce5fce76dec49de049fba0d0be9c879ff41c63"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.3.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "a537c84b5460c0b14ecdfd73bdeb06209c4f493a1a4fc4f7089b2a103632adfc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.3.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6723b6ad4d12393b339233cca48f4923ef815cc83b71a2504274029f4dd76b90"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.3.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "506472cbf41cd19fb6426225788ac537c96790b481c7bbfa84a2d8bf33e7d5c2"
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
