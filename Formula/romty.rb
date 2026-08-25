class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.11.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "ead822e35d7d68786af7eec3a9c391a55057db82485a99006115885228cfd6c3"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "a728b75b6ddea766c06ca438533fe7d49f3a5fa668b73c938c150f1fa8e54cd9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "b1c44d584f91daf3cf0dc5441765a698bc688b7d5b6a9de55830eb801ccfc1bf"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "758832c06ffed0bf5ce058330cfe5b952998dfed47d3e5697cebb9c63d15b5b3"
    end
  end

  def install
    bin.install "romty"
  end
end
