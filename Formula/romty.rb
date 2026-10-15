class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.33.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "09bb5cb1538aef49a846b35f381fd663cdb5ee40814d62dea5e028e3f6a90005"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "eaa44fb23afd4af035b210f70383afe723e86db5098c476800eb797ae1d45c34"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "31be67ac4704768454a89893307aa3a73ae1e61513cd9375076af3201ecf106c"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "3a54986cc7f0d47170632c96150a7aad160cac7706c1a89dc700bf119ee4270b"
    end
  end

  def install
    bin.install "romty"
  end
end
