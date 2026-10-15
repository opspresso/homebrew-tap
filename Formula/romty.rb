class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.33.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "c9e2dd3f8548d7de22387d278d1f5662fe4b7568ab0e8a027a3cd3654f911750"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "96b537ab99d54d419a38cf5284066f141dd82518943e22d1de34a29136c20482"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "4f7bf504f0103ee84e435f870ec414068f2b5ea8151e4b9d87916fb09f42e065"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "03df12afeeb864f7f38f30f6a8799ef2580bb6afd3383b4cca89a9034081b8e9"
    end
  end

  def install
    bin.install "romty"
  end
end
