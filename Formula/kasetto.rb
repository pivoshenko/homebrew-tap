class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.9.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.9.1/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "9e236f851dfce1d6efe8c2ee0a3470b0d672424c5d62d6f7005617be0d44ae7b"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.9.1/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "c826bbe6be1eddb33ea0b946193fc0d91002ee46514bbebb6b918e332d9afe21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.9.1/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4673fd9cf149b756a4fe418c810bb4cebbbb2a1a738dbc1368802ab33fe1b917"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.9.1/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "47986fa5f094fe0161b5259426f1851a79da3803e01e40a2bb19a48b17a1258b"
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
