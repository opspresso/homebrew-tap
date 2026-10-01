class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.31.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "08f8fa8bc6bdd94b1ed43e32c9951c86d48fe3b71312111fd8e4086f2e2f0461"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "c2fef69348fe5a16a42f1c11fb31ae1e3549bbc22ad882d13a4024e1efdfdd45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "4540594bf896c1ca4feef531834a9c8a173a28f78808cd06a5477b400e49e928"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "ee8c5fec4df2ea31300d07b2437d506110b95c810d443efdbac9326c91a4ae0b"
    end
  end

  def install
    bin.install "romty"
  end
end
