class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.41.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "a5de7f7bc05d45bf97b45f4c98967ed8f39ea59212de731532dc173974a54d52"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "b41af0bca2a4d9383513ca4881c41a6ef62f49754b5c2b8dffd7f3651dc83e67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "98149835d552a4b5d45ae9fcb46c85e610f4e2d707f3178a15fc7291f0fde234"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "da0870fcd565bb1ae99d6e1e49f5f0729edd80852d96ccb9a57b2edd062a2bfc"
    end
  end

  def install
    bin.install "romty"
  end
end
