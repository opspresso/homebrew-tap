class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.19.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "93262c2aa67beee3bba8e10d449c91120d6e49d09134cc503ac92e7e99307391"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "d6dc6195d86d76319939ed98b2984c6791fd9bdc89b314e32251510b5b3b3a0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "ee958b5e7db3a4b4679514f01c6dade3eb70737a8917c591b62391375e382201"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "b1aff4f4bde6329e7ff86a5e87a539eb7193d291c0b1c16bf817f7c71504ab62"
    end
  end

  def install
    bin.install "romty"
  end
end
