class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "2.10.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.10.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "75809e99e2c75680a1f0afeaa0f165dba695daad59c4d5627f64802238569646"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.10.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "96030b956e8e4baffb43efa806e59485b3f4cc94957dd52596d36dff6386bd57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.10.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "48b42af8d4dea1efdfa0eb7f5c3235f3f7e75d8a5ecfe5c96bc98f37e3e18f04"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.10.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cfaf27b52fcdc0945f0c099f7790b63c5c1c4cd7f6c8ee18c88bf295b152e118"
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
