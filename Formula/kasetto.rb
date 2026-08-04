class Kasetto < Formula
  desc "A declarative AI agent environment manager, written in Rust."
  homepage "https://github.com/pivoshenko/kasetto"
  version "3.6.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.6.1/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "c7daa9d9cc76234133ec54432c3a627104b4042d249a57c659bc72fbd518323b"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.6.1/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "cefc390178fd6907ee40fb732a71738876ce3b4192c1cdd83499a1fab8267420"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.6.1/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "09913934324fe62b7520a6333217d710c6bbb11b8a15f2f0f0744b37dd3b5be3"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v3.6.1/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d3ca58101e3e139f452be8f5679c118cd0a543ecda35362c04ea66f12245298"
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
