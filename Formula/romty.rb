class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.31.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "330b0bb6beb8056dec8189735e7b3328954a13c5d91dd4d98e61170c53ef1f73"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "984fc7eb203c770983be58422feb205725195c6a9afe0985d94d7251a57e3bee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "75a343fa1408f97d2cc847511d351bc9bcdb8a7b642f27d1eac039013056fcc6"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "6c713e3b6cc64fcb27bf9ef7200408b86623c48eb64243949abeea7c1e7652d3"
    end
  end

  def install
    bin.install "romty"
  end
end
