class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/nalbam/romty"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nalbam/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "434064d296e93ff8f8d8c6561725424020009803e50ee266ec49c39ecc5314fc"
    else
      url "https://github.com/nalbam/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "377c9c0e926bce80bd377853b37d4064ea4e35a3144dafd40b2941c70274caf9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nalbam/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "5e7fbc265e912a79926f036aad86120e59763659424e3fa14ac0072cf29eff3c"
    else
      url "https://github.com/nalbam/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "d0a8c2bbc00e3245b48af194461b15fbfdd70fc934982e2f473cf484925b353d"
    end
  end

  def install
    bin.install "romty"
  end
end
