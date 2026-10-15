class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.10.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.10.1/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "a7c7eee08384c561e355a442b025728c0d3fd550813347fa5bc212afaff326b9"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.10.1/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "a0ca34f76ec93429d132218929d4421d600f082bae4277a0d4eaeb6daeb5e12c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.10.1/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b16f1f439d3ddc2146ca8e65e61fb7372812eeaa192cda8fa6f81bf29495a1a8"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.10.1/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9a1d72e7790ede58354646363df4397d9e05b36a6f5084ae0cba6c661c61868c"
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
