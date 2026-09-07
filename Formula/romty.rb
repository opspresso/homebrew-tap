class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.30.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "b6f4ff458e82be0426301879fcb3fa8eb9bfe4f89d1789becc7a4e0c70ab61cc"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "f15e19f61297c3d78aa40e801f24addfc804d4f3be7d87874dd40b168a7b4a5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "40d8d5cbc638ccd5af370b6dbe8576f079836df959beecb3996303ac77740b2f"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "b7120baaf75d6ff7826500cebe5e6a020a08196d87b4aa37eed329cdc33e984a"
    end
  end

  def install
    bin.install "romty"
  end
end
