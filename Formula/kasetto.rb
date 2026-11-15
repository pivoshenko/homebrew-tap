class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.13.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.13.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "f0694559784dd899c2e6e18d78907e75a92b7638b251452e164f9ed2074eab78"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.13.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "26000d24ec50139199ddc1db4b24439463d3ed246e138d9f9fdbab4e777d0274"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.13.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f45f100e06aa7640538d362b9537ff01b19402c37543f9bd5bb65e153c13f1f1"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.13.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e43b6ebf15fa423592396277f4d8ca833464be063d5d246cc3b8a5a06ae9b203"
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
