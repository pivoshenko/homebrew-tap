class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.5.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "96904197db710afed9667d5ed85e42738adc160f0ca00e69a64bed38d9999764"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.5.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "9b410a2136df617c97ba0d96f74fa32c3ebdf18b18821a96f36a287e29824792"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.5.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "219a2136041cd504ae5cb67997f4f8b54054c6d77e62810a7bde3e7f21a8bf8c"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.5.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba7fa509eff0e725aadc1e4d15879e1edd933c9dcc4fcdefc4b0a4d4e4467719"
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
