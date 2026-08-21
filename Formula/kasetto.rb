class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.7.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.7.1/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "e06e794b392847ad210b65264c2a1fbd51037b5f3ec4c47bad4f424332048260"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.7.1/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "6ca650749b08c7c42959a9f2824a3af12bcccf7bdac0250e5221a50cbb56eeec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.7.1/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ace2751582768adf7722d5a9a51480691b31f64608a4fe1c985598a4a40ce2b5"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.7.1/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "91cf09b93dc26c947297543bf5e5af43ad135311f4a8f21a55efa7872d97470b"
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
