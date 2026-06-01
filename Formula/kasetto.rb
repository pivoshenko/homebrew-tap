class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.0.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "2b022a8d6fd7a0774b5ca8954c2bd8fd9aa84fb535aecc497f38d0cb932fcec3"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.0.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "86da1ddd0a3dfdaadd22fafca656adb9538b5f4df854748212954a5c12564cfd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.0.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0eb8615d95333366ffe7769a5922d5e669b421ba275b1b951e72a5d3e51159e5"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.0.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b767b9f606c3c46e014e8fa5653cc96f3fc02ddf5f57a83beceec8a3eea18af"
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
