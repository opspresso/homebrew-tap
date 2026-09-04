class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.30.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "6fbbdedff6d52c2f854d9279bad13dfe6ade42c4f6ea221c3ccf590d419728cf"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "094fefa53bc18c6076eb8a1737784bf97014ce216860a6ab8f4992cbc0cd84cf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "3870850811f43eeb3f23a0f1a62d49a46fb5c3bbe4ae99d339b17c89842ea0c1"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "55de9f408ab8759ce2b402f66694853682f18bff0567e50443ffbfe72f541393"
    end
  end

  def install
    bin.install "romty"
  end
end
