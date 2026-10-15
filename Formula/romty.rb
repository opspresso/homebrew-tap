class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.35.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "cdeceead34d73ee6989d04f6e192d937b781e9deee3aa8558a45af60f2a667ad"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "eb3470f7f07a5aa5aa2bbda80c3ebfb1f5085e7c52848df1e3e2abdf805768cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "8df2d0e9dbaf4929dc3744d40dae20824612ea6a3c9436cd76a745cacd311b4b"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "1b98735ddcad63df55a6486752ce418758b39279d87082d35f5371fe64f27aed"
    end
  end

  def install
    bin.install "romty"
  end
end
