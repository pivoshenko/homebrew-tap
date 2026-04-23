class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "2.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.3.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "99429950f06a96237f5565584cd38d0de17650fd285433bc8b227f3ca34cd15c"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.3.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "9d1921db699afec3ac18b9e4da48046aa1818601e7c08cb54c7c8dcbdce49a18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.3.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "641e38f7df89df7318aee64016e444007bb30ec7d4f4fe6ab1b0772650ed88bb"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.3.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a2a6fcce3af5ee7028175e6038c0b862b7135c09b514335a9f5f93b8179b3c7e"
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
