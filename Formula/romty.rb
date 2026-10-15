class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.33.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "fa2d073833d50ffaf6dd534950efb7e96085eebbcd02c02d773eb30e8b7f74ae"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "9bba8aa44a031b9efa2604ad09a4b1dd5f128e5fcb9eb45dcd437fd4b74bca6e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "f4ad83bd02abddb1e66511d14c1a359df0639333a1f5bf3237ef0d813642a67e"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "1235affc3b2e9c15f58dbff74f1e89161558ff3d79a122c198e52955be750cf4"
    end
  end

  def install
    bin.install "romty"
  end
end
