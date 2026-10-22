class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.45.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "4691283d600f6051e0aedb937a81e6fa349c40148516ae31c12f6290bb6e79d8"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "3f6fd1bf708194a9a55bb15c152825c0574595e5d12e43f3d1160f1e5ccce296"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "eccfb40eb6eee1eaac6ff8a72f106b7c44449ef129839a0f50eadfc4c8eed3e0"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "f4142a72683b560d87912b0d74671ef937a33ed615d414bea7fe44a517711b0b"
    end
  end

  def install
    bin.install "romty"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/romty version")
  end
end
