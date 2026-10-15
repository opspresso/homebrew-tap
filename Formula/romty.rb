class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.41.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "7e71a313139c86b7ab8489fcb0e8be420c192bbff06f6ca2a072e4c8d139e648"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "e36a0d3cd4c15a640525a41daf28b31d3d44859b9c1fd75c1ac81b0b28059b5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "4b557e075f7367ddd3909447e9ef8c1a46b97680126aeef722145470a51bacae"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "3c7c771bcd51fc782ba22718d4951cf20e7b3b05fbfe31a6c93cd9b473b2c79e"
    end
  end

  def install
    bin.install "romty"
  end
end
