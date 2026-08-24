class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "56d73451724c65670a8a886eb3b6fc83cb5cb51b5f6831002e79bb15eab2ec4f"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "a7d544e4ef77a3dea5687b019c569ff615422c66ece65b3bbf96a543cf15d5db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "268cf993b65a97a09a0fab517a4151a72e3ab7c6fd83992a422a1b7c03ec7000"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "600d9ae05bc1f53d60988bb350dacaa74188ce7255d693926e599530de574d1c"
    end
  end

  def install
    bin.install "romty"
  end
end
