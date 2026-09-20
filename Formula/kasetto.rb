class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.9.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.9.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "00b57b6111be890c27419b8e937a4537999d654239aa2f228eee44cd9f30a9c0"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.9.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "37d592874dee3194362cc601d3cc70ae64e1b4f5e7c13c67053fb4303fe832cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.9.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c877bed56eddf2f52ee1913646520cb8c86714f785d8308bf70ae9faebdc077"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.9.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49fd8f4c724f249c4f7b68eb814cd829657c4b2de42b4b1d2916253507834807"
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
