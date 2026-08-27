class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.22.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "b7a5b8aaa1cb07523620769e6deaf949cb530ce637a8e9c9935e0d1f669cf37b"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "69e82d1e573b9ae780cfb6136112374bc40a1d970a5b52469447791dd65eaf59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "f78fe8ae3463aefcfaaa254b785ee2a7e3281abd80f99f5880fb3b1270e6e1cf"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "338849e69d76666961fe01af2089d55dc56a1ac2bffe3d460220a8a3939c2ad6"
    end
  end

  def install
    bin.install "romty"
  end
end
