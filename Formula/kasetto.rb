class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.1.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "5038e5a09cd8e197c9828f3470859d1ac106551f67ffe3600763baa0e4718d9e"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.1.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "c2b17270305068addcf6030d4b98dbbe1f035af3870bdf8bd354374c25fb39e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.1.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c607a35af0f1ee89b1c1da0d5cbdda16501359fd8ffef29c7897e990780c0296"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.1.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22b2903fc0ef984fd288d87c794e29f11f93af1df203fdf7dc974dcb163d6af4"
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
