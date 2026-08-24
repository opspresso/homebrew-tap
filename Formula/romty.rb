class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "5beb1fb5a26f96589d3822df3dbd577d6fcd3efd238b7eeafb4d147ca19b5bab"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "88b4baa6dd2a785a7ae57f500be465f061762303436d94651c656d541a05f275"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "de34ae5ec0e132750c62709ad11b7ef0002e1ccb6b862ab5f23928fb98d855fc"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "d12dd5090f70c8e1b2c5161801c24271a50e6213c3ead112b8563ffc59f0a19b"
    end
  end

  def install
    bin.install "romty"
  end
end
