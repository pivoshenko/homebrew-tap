class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "2.9.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.9.1/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "bb96b0ef2646afd8bae6d901007c957de28ce80a496b1e6fc500a3ac9b7bc3a8"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.9.1/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "efa94f51ce53162953e52a410ca11993b9cbb1b8597deda8d58ec0b1851c2500"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.9.1/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a90190ac1ed994d486d8654fe6d2a87a51779a2c18576111668677d4fb87214"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.9.1/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d258c3523e8b543bc738560cc68312996ea37e9e288036466391b31876673c0b"
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
