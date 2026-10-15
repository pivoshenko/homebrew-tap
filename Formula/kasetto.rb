class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.10.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.10.2/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "ccb2a0e1fed6def1f0ec3827611d59fb8d3f2870df2296e914d7037f0e6e7cb3"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.10.2/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "3fc46eb17ab2f01ddb03247a5c92870fd24663f20124fee2417423344aec5231"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.10.2/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e8333c9739e7c5279c36ff3e5caf4bd82ee81a954204fcd6a9e9c7bdaff3a997"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.10.2/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4ca2be0dda1dc6f5aa818bbe7e0ef057c49ed8d90945dab3b1d8b537c597c874"
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
