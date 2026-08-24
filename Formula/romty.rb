class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.7.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "77ca9133af0d7800a85059c794917128a21bc17fd66202b02eb5bc958a4bcc9b"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "5b79d0785af3f3232cb104608c23e95855cea37ec174d9d12bb964d1ad197b95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "e550dd4e4fb5a42f518fff2a6521ad162925a7713617846f8704407e06442c40"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "ea9c5e94109f086f4bd1e7b42982914d12289c35d014abd1d24a992eb9666e94"
    end
  end

  def install
    bin.install "romty"
  end
end
