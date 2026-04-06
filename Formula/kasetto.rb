class Kasetto < Formula
  desc "An extremely fast AI skills manager"
  homepage "https://github.com/pivoshenko/kasetto"
  version "2.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.0.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "8ddedabcaf1286cf18f81855bf0cb8bd550418d439ef93a74ffa253a0581eea1"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.0.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "045b6431cc8eaa5a74732b8e30ba37a8201b46a48d11f840af383c040c521ca5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.0.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "399fd7da9994c445207733de49adfd35d69c665f99165b8ad85e6ac4c26a9fdc"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.0.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6918fafca7c771a0382e154e99f93595d5094848f5305af8a5d74fe21cb24ded"
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
