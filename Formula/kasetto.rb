class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "2.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.2.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "e644c91965c2b16db9c9211f33ba2d21c7fe35be745c8e1e5fd1356dd535898b"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.2.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "c8e2e6fd4fd0f607ab393fdf43176e240d194ab1254ae80f403931fc44df0625"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.2.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6784c57ce53f62916c2f74fb5ca7efb361756e8e7001f8812ef3af7f748203c"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.2.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49676ef8425a56dee44eb6f5ef57949c2242693d58962701f711c5c4ebbcb7fe"
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
