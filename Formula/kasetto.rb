class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.8.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.8.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "bee34fd32c7bae79d32c7906064b69802473182b28471cd67ddc2ef7b4ff8026"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.8.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "455f15f3e5d0923a69b73f45d6285023e118f5c51f1d324d39845064ba3e6094"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.8.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08e3f3c1c3ba08207b7959ebee4ecbbc39cbca879195b49cc757e05a4f510010"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.8.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e145c740996007d1cbdaa6a5b469e0ea12357531428eb3266104d034bf620194"
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
