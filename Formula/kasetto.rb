class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.13.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.13.1/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "3b9abc0721094bb54741af7b5e6b38cdf63d17c1da5cf633a2aa06f05fb17591"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.13.1/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "3eacd492dfa3ac0b75c0918b6614327b8a2de961a01f91240303ddc02e0c21d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.13.1/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "800633e877ad82f9c5371414ef1401b2adba9d87d60dd1563e5c5705d6d1ece2"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.13.1/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88a515c379efec78e21456634430bdfbdd57bec0d67f1b03221449fe8ca791d7"
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
