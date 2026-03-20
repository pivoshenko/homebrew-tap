class Kasetto < Formula
  desc "An extremely fast AI skills manager"
  homepage "https://github.com/pivoshenko/kasetto"
  version "1.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v1.1.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "c40b1181c46c33b95a7eaec485cf37af4284b42919b9baf76452f2b43d87cade"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v1.1.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "f97c3c51d646b671b67292c3270f28368b032e1282fdf84a8248b06417bfab4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v1.1.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6be1736ef7f45ae6d4d1f9c790f6582e5d64560aae675ec23d62c22d866eb679"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v1.1.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3c805a4d5e687c39b27ba9ec2232f155f4e984bf4784d1f68bf38df60d99b8b"
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
