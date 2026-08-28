class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.26.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "a1944b682c10bdc3a7dc621ed480b29482c6bda3e3803ec328b1d328bc6ae40b"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "257742d0a3c356d13ad5d06be608f433983a5b5bbbc5a3a57fb4311797b5ae9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "b68c9a6c2b0e24154350a3c87fd515322070a3d0646da17f695f43f64e842eb8"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "b598820a3c15478fc61151fd55ad954d070686ca62fedc47f70f8c8f6f892452"
    end
  end

  def install
    bin.install "romty"
  end
end
