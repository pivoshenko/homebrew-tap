class Kasetto < Formula
  desc "An extremely fast AI skills manager"
  homepage "https://github.com/pivoshenko/kasetto"
  version "1.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v1.2.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "65e3eb8e952956442ca052bc38b5297ad2efb2b8452565ac0582821ef6a860dd"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v1.2.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "f770290a33ac1cbbbe2567c810a66cf5f97accb21b04ff92e98cc8ec1a0f2dce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v1.2.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "337b8bb7b3988ff6ab5cf7b70d5dac14b7b24c241389edf755df68acfacf58e0"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v1.2.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e4c87834260161d6d2d56f01eea21059dc34174c031a2439cd353e25a17cd152"
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
