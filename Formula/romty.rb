class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.22.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "2beb7bd2f3d334e562f08c95af7d3f41329c6a271b3b4d62546c2dcdfbff6684"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "e04dca4be363db8a590361a388447a35fc6368116cb743851531932d722e2e05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "24cc71c10d3a9f99a36689eee06088d13b5d9904afe504dc37551e30cd8be661"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "7383915f053a95dc629974c69b2c020f45a9105d84317122cb240ca15d1d734c"
    end
  end

  def install
    bin.install "romty"
  end
end
