class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "5b1faab985fb265a2a01921abe61c07c546c01d9b18c8a53d4c9b271353a5551"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "8e6966f4bdd6f110012be7448b3ea1d34096b4d3f591e35e898b60e026d0ff58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "c7dbfee70ace1ba0c64d2996e99294db31a777bdd6e1bdf7eaa39ce92a3303fa"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "52af385adf7dafaf47e85edd51c120405911581763c3afaffef1520e3160a880"
    end
  end

  def install
    bin.install "romty"
  end
end
