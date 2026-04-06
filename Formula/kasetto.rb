class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "2.0.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.0.1/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "f9b32bd6c1d57cfd55b13398040355de3e1258eba1f50057cebf58745cca3120"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.0.1/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "f3a2797e5172e9958e7bb69f8e50538374350f3d710eb933f1b222a95c89d45a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.0.1/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "72aaa5b3ddc41568658b8285b5a86584d0d58b8de2924362c11d9fc0eeae0202"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.0.1/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5509ca3bf9a89e2d9b82002670fe69a5d71d21b2d3e2035fa36056fd624ebcfe"
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
