class Kasetto < Formula
  desc "An extremely fast AI skills manager"
  homepage "https://github.com/pivoshenko/kasetto"
  version "1.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v1.2.1/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "8a770dbfd1df297fc7b49dcec5cb40516b018bb21f8e9f8618a3715ccf64c7fa"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v1.2.1/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "5812f02a8042148d4c30f67ca79f07b62bfcb6c696f2a1a75167042ebc27bf0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v1.2.1/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "67098465e9fb0fdb42f23690b08f29cde008e1545c3c4043474029070c29e245"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v1.2.1/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e2a8d5b8de1bc78791952ca37370509ee096312650bff6fb4ea0212b014d894"
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
