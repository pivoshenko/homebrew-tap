class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "2.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.4.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "73fa9148210b272dadb4c86e23623aaf6f67f461f992ebb12cbd5c3a236b472b"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.4.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "e67a0480bcfc42478887cd1c423943f9eda0ac9d823b9829273b27a017887422"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.4.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ae7d615cf9f0a47058add34b336bb818dc5cb9b241cca13d656071c430e22f31"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.4.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34c97c076cb9837c12dcc0ec8df010742355e49191747f2b73435dfa1bc813be"
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
