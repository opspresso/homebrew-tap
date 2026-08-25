class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "4fdb1fb8164597bbc77d5ad8b41729ee03cceb45a5c10844cf843fcfdafc304c"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "31341ce6ea29ec739ba9b83f0917d54ffee0cf76a40cde1d57223035843e2f6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "0bcf65de7d6b928d4f9c4c9269eacee945fbe37d8da6072529ce7e710000ae56"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "667b5646e5ffc637b9c6a16093c01b2b2de159e2da4a33bb9b0052d6de9ad381"
    end
  end

  def install
    bin.install "romty"
  end
end
