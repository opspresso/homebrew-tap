class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.11.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "ec8974662cc88ed24caf80cf0fa5b0a5ce245c39c37ba4953245c8a13f2e0c56"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "d55e724c80f9a4914c8c427a41f84bee31d146de23ddd87ad8c0d7e8f778f910"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "aeec5b12b3002f46befd131e629ad8481cab1976378f0eeb08afefe5fe742d80"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "4f04b9cafe102eb80fde796aef67136ed9550d784f40f7668b45398877828488"
    end
  end

  def install
    bin.install "romty"
  end
end
