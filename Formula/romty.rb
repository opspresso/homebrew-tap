class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "daddb0f2b18eac930b71e300e521c6ff239b3d29f2aaaec8d06a05d1080e84e2"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "d9d5b22599949c4e38f4e28c83ba3334dc113ecdb3e51934fabcc5f42a3eec1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "ea24dd24c625013f9530529ead5ee3ff23642e0ff973661f5721d5d387c270a7"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "5cb82d08f676cd44cd5502cfc75466786ae79b2810e0c19b3c2b40eb09a73146"
    end
  end

  def install
    bin.install "romty"
  end
end
