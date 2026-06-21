class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.4.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "09cd30a62f4ee15d0a291636bd923a4f84a3b382ed51d719a4062dc9c08d36d3"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.4.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "9a80f864ca8dba17a05c33fcbd2e7437bc90f14f13f92580ddc6edb398f37ddf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.4.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6a67f525f54966d427d51bf2a83e555870fa4611e8c14fe83ac32b408157bda8"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.4.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de23443faf279f3690bdb19df8682d684aa63751f4722cccd89514f39d9bb50c"
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
