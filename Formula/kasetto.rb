class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.10.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.10.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "b0fe15193bff2ce68b903bd68d539c26eafb17370340ea5e0903c80fcd03f0b8"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.10.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "a7d5243ee554468425c6086e31626d6d301fe58d814e64dfe220ad208d7a66b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.10.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f6cc2a34a90f3c936787a41f2f6ca38e69a980c8cd4ec74a5573046eaf2886b"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.10.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1aac6540926feae412c5f62f9178586d9e4c896c474a3404843ddc181c1a76e8"
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
