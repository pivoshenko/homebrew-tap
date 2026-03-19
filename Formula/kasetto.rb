class Kasetto < Formula
  desc "An extremely fast AI skills manager"
  homepage "https://github.com/pivoshenko/kasetto"
  version "1.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v1.0.0/kasetto-aarch64-apple-darwin.tar.gz"
      sha256 "cafaa4a5975065121fef464376e0c63eea490e412e548932e4d419c36003c70d"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v1.0.0/kasetto-x86_64-apple-darwin.tar.gz"
      sha256 "fe0341406558114655dcac21a4892ad6039a8dd7dc31b3fbad64e5f93bee56fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pivoshenko/kasetto/releases/download/v1.0.0/kasetto-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "49ecf2696034d5051b991712bbf3e3a49970d996c3d7db39e9e97d3da56a9450"
    else
      url "https://github.com/pivoshenko/kasetto/releases/download/v1.0.0/kasetto-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac887bb963ee47e1a0b534d9f23470055c6d20822ac6c4c83fdf771929a59899"
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
