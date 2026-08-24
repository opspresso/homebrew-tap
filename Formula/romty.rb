class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "7e95a26d67fc986a89f8ad6fa1e01459a7a6fd12f3e12117f61e64137f4ce39e"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "3c82715c5c8086d8c6d57e0fd927b2d3134e731ccffa14e4e2142f8ce0f1c768"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "5295a8e054edd056ecc139fe469bf9dbd4273b57af216e9ea3ba5b958cde4736"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "8e689f3ed1596a44959d185288954f60d0d08518589c59b3470dc506dbaef49f"
    end
  end

  def install
    bin.install "romty"
  end
end
