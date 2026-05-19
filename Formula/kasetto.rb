class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "2.11.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.11.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "f51977f5bd193a3680efb5b3431cd0619983f54b2257e9d0cd544fb284c6b2dd"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.11.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "e3d073194ec2268d8a2b09c07548045ab2e44cc3328cb437ee0f01bc70aae047"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.11.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f61a2b968b551a109827c42e53310df0c9d5c2b37eee9fbeff2558a4278e42ae"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.11.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4bd72c81182a8418215508a0b0311cb345a19d215bdd23a1a10e205dad89874"
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
