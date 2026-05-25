class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "2.12.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.12.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "93a08866f735ff54d0712a849c812733c8df2b46faa876ba2c812e8094050061"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.12.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "59410fad198e9f8c897ee905bedd9b4cf677321bc4ad55e8ded866b8a41e00ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.12.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "45545f92434d8d3d96d9c438e5691c5289ecebf18e8ccc156e9e95e07fa4fba4"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.12.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e0acdfc183cdad5461d0f630a3ebffb9c31ae0c77a394c2ba98d5c2315f11da"
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
