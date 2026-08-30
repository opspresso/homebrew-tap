class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.27.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "7108f2b1a73418ef7c8390fce83ef7c2f056b901524b08ea514f86e74101605e"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "732c622668184544e9e5d786e0898319d5cbda6079aa3686482206a25d431c47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "4b9e6c49f8f8b46ed7a74a843183492c05b6df96c447d37476b4e7dc1cff1036"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "3e571503bde06d65882042a764dc7711abcac660f1d3516fc2d27d3f27121e8e"
    end
  end

  def install
    bin.install "romty"
  end
end
