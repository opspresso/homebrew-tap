class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.27.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "11c48265a6f72cd9102469674ba91505b4c1a607810b28ab647b702828f8a0fc"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "56d79966875c0bc86306043f776b5604f2edd07f157c04fe19919670ec950b19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "b7bdb33fa2df04d3fbb91e5486298eea41c18a387fe63b8673a1112ed8ead11b"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "a3b770257df2ee605b3b934f48f84486e44f3fe49314f4b1e457c8f15cd90a38"
    end
  end

  def install
    bin.install "romty"
  end
end
