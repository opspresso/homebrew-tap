class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.41.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "0c1265c45e41c8713668b51a27be02cb14b53634e9f18b338b09438f0a14420e"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "62ce0f10a886cae2cdaa4ae5bb1326a294165cb745f5617f3aa6aa1604cb415d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "6fe2639118101bd50b46bdb8d151f7cf5b7c9655e28539fc6a7fb0400d536270"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "c91acb26d552456ec2568f8e4c72abaa2ac4c01520a0dfe1ecaa5c3ed8d41868"
    end
  end

  def install
    bin.install "romty"
  end
end
