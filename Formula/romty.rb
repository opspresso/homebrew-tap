class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.25.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "ff79467b7a53c4531db8eb32fd33196992d7b11d2c629536b87c09346e6f3b98"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "945ceffc11bec594a890e9560ff3678e4489beed61951e34099999128cd67025"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "692a2cc8ebd8e31d371334d7b3ef4f674cb8bf2ba761d5f6910ccba91dbbc00b"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "bdac2784b9872b8b4b864cd283c90ba6db9c0cd7331e5589b554193f85d3c99c"
    end
  end

  def install
    bin.install "romty"
  end
end
