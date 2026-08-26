class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.19.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "374a79061296173f5d23bd7283f171f9e4c7695d1ed295968edcaced7bc9ec8b"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "c3b5a61c539929d431e2f763c32e1e36db542ad7620decdb3ee452a640289d1e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "6d634fc10128d259cd8fcfc98dce5840d467b2ff030c421e4f25401905eea63e"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "af678284389535e8a595c80e76f65f7bf45f7edb32c821651d6de99e7ef36d51"
    end
  end

  def install
    bin.install "romty"
  end
end
