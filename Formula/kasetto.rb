class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.11.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.11.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "b70823da55fd7827d3bcbae4b5aac336d8db186c4f2ee07d3892f763d113128a"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.11.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "9b9ae511b3a4d558b034384f22efa3d20720d95ffa4b8b77ec185c6d1cd7581c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.11.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2c47cbba626739b7b6e08770902d023bf770c8c8f94544ef173a5ba94c350b5a"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.11.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d43e566cb8f209ef40102820b37a9df80a8a141092c66705c91a1acd22f77848"
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
