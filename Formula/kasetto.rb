class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.12.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.12.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "b8630768c3da439a8a31fd17ab57bf062adbf35b0e6ef57b8606a2f9d57fc9f6"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.12.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "b8f3e167becaf3c5eda0836b6bee964806e217e2d68393bbb5f8e9d0c7c15924"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.12.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b40ede6a71831e82dc31c085e0169dffce7a398d5048a4aab02515d0d313beab"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.12.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b1bbda9fb47eb87c023fb5be78016b9315025de1aba75152e049f3aa4e8d7d1"
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
