class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.42.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "1112c636ac928835ff509ae723c6edd27b378a2717e0c1e81001fff67c8b8de1"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "a7bece0c416bc8f1a44dbe07fdcdbd5f187fa1a683077b10f58bae9293887b19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "7381485bbb835a53fde9e3725189f3edfe546eafda84d992fa8593e7ab581c44"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "80a53108d9adbf014597e5a3cdfc6b6fa348b8a4e3422e51da6b2aac468ed53f"
    end
  end

  def install
    bin.install "romty"
  end
end
