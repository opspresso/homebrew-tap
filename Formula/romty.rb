class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.11.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "5000a25aae9f44f2089af6634ac6eb146932ebb921282eb2b251ba2766853429"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "e9a51ecfb9216ff43deaf636e4d6a858b8a445f0ed08623c4c3a6757865f407a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "a383b8c91cc87129073759beaf3bde524d49dc50de23c819fe7aad2f057888a4"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "4e9b97d2ef5d6bb5fe57d821547e0e80f7691d72e80bda0f2f12a50a8c384660"
    end
  end

  def install
    bin.install "romty"
  end
end
