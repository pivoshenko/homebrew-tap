class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.3.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.3.1/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "a92916a0c90c62081fa16293dbad2853256e402db66ef802099b71e597a6ae5b"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.3.1/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "b8988584bd20589a67bf941296f95712e8aae55cc8490787b872bff0097d77c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.3.1/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "93e358707d62ad6e9cf6b450272c7ff97049cbd551c3558515c9e4442bc3c097"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.3.1/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0109026f85697e997fdf4143c297eb06cd827557d53f6a1950564c449a3e3cc"
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
