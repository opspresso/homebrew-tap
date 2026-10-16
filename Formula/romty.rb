class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.42.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "fdfb4faf24f2cd14611b23a6b42a3adf2f4d35208581ef9dea8263a5ff9ce439"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "8191fe5e2f644ecf440ea64f98cc095b76b7c7ab7006ceb4b37fd9ef189a1033"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "19400234d245ec4d4d9d2abe1ad33292c175ab72de573df9e009c68ecd3e14ba"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "80ddba5327ed1b1a466fae2c8711ffb8d5a8b3a43d4a0e60a28ba4dc2d1d4fe8"
    end
  end

  def install
    bin.install "romty"
  end
end
