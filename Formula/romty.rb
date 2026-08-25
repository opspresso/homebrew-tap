class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.11.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "f3cf9a07fbbea79d77f41f7abf3be04a8acd23ce614c62a91f91de47bb52d773"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "47c02faf53378320cacb0fc8e0b7a0743b4e1033055a0793a7dc5cbd58184e9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "55a6667f8c9fe125343398193dec64af8112e64e06c3add46f9d2a9fabc268d8"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "45173daf7070df8417d3cfea1a91586c39296fdb8345d9c9b0b948d1592f8100"
    end
  end

  def install
    bin.install "romty"
  end
end
