class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.18.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "b9441e49e1b0c5389b7e8a7881d3d41629ea4893ef169ddd6ed462af2e56b80a"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "f9a34f93797f71f926423e2f965659f1ca3b271db1d34f836825d0cbc3516612"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "5da9c4c0b1a3a8682877b5c78a60941f809cfae12baa52c47e4b85717129d913"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "1407843ab37c93d80f0fb4b587c77f7f1890c9b9c166aa57b1901aed805a9fd8"
    end
  end

  def install
    bin.install "romty"
  end
end
