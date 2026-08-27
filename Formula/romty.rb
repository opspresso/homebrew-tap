class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.22.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "8200cd8722eecbd7c3855774e099d9fb00933c635fc733638648e7e129fa3871"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "16abdaf4e240a7816c84b5104a0f1d76289c67d7644c0b5fbca5952df8276f96"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "686d0c5e6bd9669889e700ecb6449f973da5fe7d7fb081d628a56334aeb33948"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "f8562b02fbad6e226bba13807d0071bff463f2d8486fd1f693d3373815e51bcd"
    end
  end

  def install
    bin.install "romty"
  end
end
