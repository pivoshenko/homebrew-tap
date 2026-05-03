class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "2.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.5.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "6cc8f16add9c2ec1ab07f914d2b2f951a88524fac79edcbe0c0ea2407b14f499"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.5.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "1c7c362f73ba473087b15fb9959d2ac4b38942c968b06b89e2ea70d8e0788e2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.5.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a90d7aed6d526820b8c56af9977e30036448c43659326fd07227120250bd0144"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.5.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23932a0ea27ebc5ce0b733fbfa5b30bd569573b9c0db503a4aede3f8f16b4487"
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
