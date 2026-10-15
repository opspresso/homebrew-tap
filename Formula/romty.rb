class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.38.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "fd135cf895ad71aa15248c9bd024ca7b4443d72dfb1f4ea9768e4a469b309c99"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "591bf9fb25d984c8c0681387f9301d4a4f9b3367a1489fb5c414bb1be305f1e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "843b298882d8021c577e0e5450a38ca4b643f1e30b842e20632ba2768952367f"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "58f04f8b94daee8f41a6bf64434aea190c5056234b6ce13b7172cbb7f58df71b"
    end
  end

  def install
    bin.install "romty"
  end
end
