class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.32.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "d0820b236b29cdbd27d029919f4701dd7695561622c4da6962a66ea446f508da"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "fa1553b7c7915dbdebc9b576da211eee4e8b40d7c54ce4dbbcc4f73b445ccf4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "e1b64cac0b8c870ffb6305d84dc69ca26d98c9efdab846f484356bedc44dac2a"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "e91a420b2962378f33685902237abb1620f6b8d9c832945458b1e3f5d92935c0"
    end
  end

  def install
    bin.install "romty"
  end
end
