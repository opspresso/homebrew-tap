class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.31.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "75ea2b3aa89ce3fea431677f71d871a7f594bb8ef0d566b8f31f92a6b52654b4"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "e56cabb9c22e82b97ba64f209e222a7dd3df9ffff0df031d2bae6d5f00b58319"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "f4e2e8b41b89a69befe49548db4670466c8aaccd029f51ce1fbbde64f023f2d5"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "3624f86af419bca61d39624224d6fa8aa33b7ecbd63b64bee934cef85556e137"
    end
  end

  def install
    bin.install "romty"
  end
end
