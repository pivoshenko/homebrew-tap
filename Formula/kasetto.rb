class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "2.7.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.7.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "7fff88c2a37a0e6b6286e4b8d8cc2d7ba69188ab57af6c62790591bbf8226a28"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.7.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "224fc4f58b75b4198354359f239f9fdf5173fb797ab8349b9f99ac4229103154"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.7.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "34bf77522eb01f7fa8af72fe1c0313eff45955cbc58708209f443e548eade197"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.7.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8d5c21d1c6fdd4cc82afeea447cf093d37ff5659936f6f2c3c8a01b70b16d5b5"
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
