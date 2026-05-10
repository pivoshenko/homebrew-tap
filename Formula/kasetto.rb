class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "2.8.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.8.1/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "1e380fb07c17349a3c01ba030e1bdab48415eaa42e75bccc748ab7d16f2c99c1"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.8.1/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "df63cef7f6ffd624d0d8dc717ea75838eec0c015befcd6e4b62ff02c8aaffae5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.8.1/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "43b631006b86ffaa84af49e7751ab35c06be4883067597079c84da1efbcda54f"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.8.1/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e03216b9e96ef31bcdf601a1c8c2055fa3d7fa63a2fa810b70044e6d903c629e"
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
