class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.42.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "be22b0014650f0bca0c717777dc99a1b18a249a18c7aa7df4a864c90a3a61a34"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "de1c5491f3b7533393f026c5e217a7fb2c1889774c1ee4871cb18a5272a4d4a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "75bc557d7eca5b0fcbeeed5c85c5ea056ba918226d90a89c413f6d32906c7e18"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "92be6e14637ec5ea306a63bfede7687aa2b4aacb1800178b4d417c91219687a6"
    end
  end

  def install
    bin.install "romty"
  end
end
