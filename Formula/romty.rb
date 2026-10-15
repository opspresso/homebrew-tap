class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.41.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "b12c6b160125031356ec914ae83ddddb49e0ec983fc463b42dc28efdf8cc2b79"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "43404012cfabed94b269c999623a5cce28ae6a6d801d0a3ebf5584e7e8eb34f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "6020f09c29c4fa94d2e6a3173a79092b383e7d879bcdacf0f21418a097aaea4d"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "cf3b43ddd74e9d2c48ce6f009a3eb86567f34fa2845c5845a2987d6bc33c3953"
    end
  end

  def install
    bin.install "romty"
  end
end
