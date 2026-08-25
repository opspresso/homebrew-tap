class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "de6e18b6dd316d581e530b054ec37aa628cc58d12f97aee6bc4d4b394e05b759"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "3b9c4410947660755705f30d191f387a161029ed4bb6a393b32d9e78e4f4cc20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "c307551dad2d889dcf79201f926a6480dd77c4be9c272a1473f414d5e482edd7"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "2041f4b3b057ea52caaf86566b794bfb8dac5f71d5906651fd91784ebe5aabef"
    end
  end

  def install
    bin.install "romty"
  end
end
