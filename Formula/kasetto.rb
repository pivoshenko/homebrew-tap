class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.7.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "bf7f5b24cc8ee307e867eae7b29b6473feedfb758d4852f7d35c41277ba1369c"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.7.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "65bf5466ded42498bcfef640b567b66457213d5db8d4a1c1014a9f1ab0862d25"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.7.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "38118ac82f129325d3c12064d74ca7390c0e27555f881961d3ca37d21bac9bf8"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.7.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e489772dfbbef7ee115cb2d639edad4ef849fd8d6618e4805763d7f8fbb148f"
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
