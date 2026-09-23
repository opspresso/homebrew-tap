class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.31.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "c050ad82709c3c94895a5f2721ec79d87bc6b8e4fea8529ec4f7fa15936d2018"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "3ed032247b584e53a6c7fec7c55ab024f5b01601f736b57e1488066eaf71666d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "078674c4a7435c64480bdb1a430bc5bb1b883ac1d9551d719359b5aedc6e2615"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "ec13232b658444dd53eacde89c7116404c8fb83a36c292d2d674142508a24ec1"
    end
  end

  def install
    bin.install "romty"
  end
end
