class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.29.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "c6aa71b311e6422f6519e7c7fc0039dd6dd3376898b556d8ee591740a5e5b9c5"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "bb2c96b7c6b5a06778c175178cc1444fcd83bea72ba3c61d78ef289dc1a12415"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "9f4980d70a47b0fd11ced14e21162a8e3c41cdfbdcf648bf23cb4dbaad717183"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "655bcdade2ec4cd98b17c4c3a5a76fbb1a80aa610ffb14a0cc90fdf48007cf10"
    end
  end

  def install
    bin.install "romty"
  end
end
