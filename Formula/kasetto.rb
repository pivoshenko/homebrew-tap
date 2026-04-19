class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "2.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.1.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "814921c403621dc2adb7ad696a88a7a7006f6e8be4cb9686a6568a425fde6126"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.1.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "6bbf0f994ca9d4a4f979b310b3493adc8f3e0f9cfa1ae78bd95d8bee26bb9276"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.1.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "556473b5fa7f16ce5a93f4770a450879e8eb9f4795de90b5999bb0d09337caeb"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v2.1.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a89dc64eebe9f245e33b41a78a3fdb73a504b88a199cc12fb7ce06bc3697a100"
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
