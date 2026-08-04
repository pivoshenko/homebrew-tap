class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.6.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.6.2/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "1a9a59f3c75bc5ac7b2292886f8ec38b20dd715a981dec0a96ff3e4d6012bd81"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.6.2/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "de9bd64568635e65c2aa4ac5a77cdece1f53ad70e9044a74eb2d1a074dae2e81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.6.2/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7dbe0fe625120c8435914912bd097fed3ff4841e87b2f51189c28584e601e7ac"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.6.2/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e469a816d84cc457775e7d76e89acfc93096bb1f6fbc3e6daa24086a3078362"
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
