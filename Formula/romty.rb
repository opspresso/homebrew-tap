class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.11.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "f42dc5f15a08e363e0c247d7bab560620047ffb17aaf46a76d8f06915523c1ab"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "5cdf074317b02f096c1713792d36a13f3255cc495f20280ac817f5b341d86bf2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "827ea7e16682befb9479f6d2619c6b67550895191fbb7cce0a691cd3fc177f9b"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "b285a58f90423bd341618020bd79cb82bbec2724c784e0a7f9b9fcbf5e596ded"
    end
  end

  def install
    bin.install "romty"
  end
end
