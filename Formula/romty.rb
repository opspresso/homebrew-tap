class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.17.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "c0734f3bf1c018875bbaa940c54e2dc6ac918e3b3e88f3151592857ca3cdb114"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "c1254e9f38d2863098ee832297a402f84eb0491e28b6cac78b8f61d19bb7cf9d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "f97569ed2955523e7f89e5b91ebcf823a839d8a65d00f647c0968529ee0040cd"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "156b0e177193c49d8a6dcf8d6deec53a16aed1234d27439bcaf10a03469c5351"
    end
  end

  def install
    bin.install "romty"
  end
end
