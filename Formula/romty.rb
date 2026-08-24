class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "942cbef1a16031212dfa193c4a12651fcb553507ca70559c3c4b07ed68fb4084"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "772912aa36d13f54e59e8e3d6d5178dbe5532fec57d8042f8ff71c0960de2a61"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "6d2663913cd8305fedc3de0c9a88889a841855391cc03f199be0c7b791a46ed0"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "2f2eb65d4128499c85822b3cbf6e8b43dc5a837c21bf333d2fb5114f0d018982"
    end
  end

  def install
    bin.install "romty"
  end
end
