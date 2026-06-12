class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.2.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "e3e156caa76d308000f0500b7cf995de1dec7cb6d4525baaea6fef745f1948c1"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.2.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "1e39e41b5e6050af412c4c865bf027af69a3c251371b378e4c435b6d4bfdd237"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.2.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "30d29d4ba2e77ae942cb14369ec930aeb40d4a5d2f73912eca9afdd97031c39f"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.2.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "957582549246c6f1f40b2b4dedc6f98677d114571e50c8f2445f95cde5c06ce2"
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
