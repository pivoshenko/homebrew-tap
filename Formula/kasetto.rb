class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.6.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "b333d27226569e37f8d9d749c219a9a01de97a729a4b70589fd9d21965964f2b"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.6.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "699e02cfba35cc7a3ad9645226da9fdb5923b49d66ee369e1a0a3fe9255d6b8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.6.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f4f97a998fb38093cd5e830684ddab0266675d82c1f30fef6a05300fd97d4fe"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.6.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "35f10bd6807a883229c20cb1ebc62100507787676e4ba41d99a00498d55b5644"
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
