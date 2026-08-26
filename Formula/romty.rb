class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.17.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "ef32633f538e9bea824f737420882693681f4f5528f8048b32379d23db86e4d6"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "a084702e28c0fdfbb4c8fb53340fd75ace1923b198da4f37d393aca1d28782e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "745371baa0e21f4cf02492740a3b193b8461b608c10706d7eed47ffd75b5977f"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "de9e903b59aab41dbabadb6e5a5a5ffc135cb01781cf9ff821f5ca49e4ef63f5"
    end
  end

  def install
    bin.install "romty"
  end
end
