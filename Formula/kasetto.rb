class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "2.9.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.9.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "fca27a6dc932e0755b8dd8d9407e10954e97ec7e1de663fb961ee49473e7fd23"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.9.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "a90b2602bad1072e0d90dbb15afcc1f8abff1fddc90058e024e6cb94b2c4209b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.9.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1810703f1d0cb0a9421a1be9f012108de5b02f892f229b8fb659734bd3507523"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.9.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "518ea2470a9f28755c73a2481688ec75ab9b7ee2c3002d3d976ae5ed9f720198"
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
