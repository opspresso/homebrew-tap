class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.32.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "cb065a9eb99a6b577c27e1b324e692583d0f067c87839b97e3363d590a551bc8"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "3c450f39a9cf256d2d9ca8883fcf885e4a83cc12a1c6299e271217ce53a75dfa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "edc85f5dbb8dbb5a87ed9dd08b129f13c973401e0b5d17bd45aa31363ddf9b84"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "3029e9d63e7dbce0f539e70f684117754052c3ee842c8a2caa84f09b443aa094"
    end
  end

  def install
    bin.install "romty"
  end
end
