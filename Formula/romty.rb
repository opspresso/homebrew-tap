class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.23.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "8d873ed44c5d9124221b98c32692374653dab1d4d15f32f22f4174b3a600606f"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "dd9424d63e0d9ba840765b885dbb56d7775d6aa80494ec057424e98199fb038b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "d4673bad84861da96e48418d06db8ded4149030486812508e3fe79525626cb4e"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "d55a4843a501c53e0a7152fbfadbc203669fb3c3668391181124b1b98d872c19"
    end
  end

  def install
    bin.install "romty"
  end
end
