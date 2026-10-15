class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.36.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "1207f2e23665369a4b718356cd449dd5d40f4e8d5cbe96e9b05fe13d213724d2"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "1d7297b5dfb621b010ff25888d3acb584973241cc11c591491e58afe5cb8a7d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "0ca35f241ebc463f360a07abef37f68edf986b6b0b5cdec13a1408674da0d91a"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "f19b27342a6f1700411f57fba102fa16e83087383f4250677d171c83d85ccc7a"
    end
  end

  def install
    bin.install "romty"
  end
end
