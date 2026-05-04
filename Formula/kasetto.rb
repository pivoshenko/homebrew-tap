class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "2.5.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.5.1/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "e03bc2b8e94cc8d168349640305f8118fe297b9106bce24b7ef9d3fa4120dd8b"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.5.1/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "04a3c2371b59c5aeffb839c06c85cc61e88f7695a90263c26af65b8b6d6dac41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.5.1/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ff6464b3440cd0b0c944da00eb21124e856e52be5a3f84a342f4d8c08ee47772"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.5.1/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c4cc9e36efe5fa46ae9ef287a35e49affb3f5afc3c0fc015f73d7f4eb1371a4"
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
