class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.49.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "5df1f7c1e4cfd5920c62aed11e60bafc001cec06e62fe1b7f665053592e2ff1c"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "a0f2686341ff11b7fadc6882edad663846d1d5ce9e1acb29bc6b7e007cff005a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "7010f10e5ee6d40ca8413524705b448af80a200a6431f8d208cc0ebcab93931b"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "21005728abb2b792f142fe725fb0798430af1c25416e8aa07386f7f9f3266781"
    end
  end

  def install
    bin.install "romty"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/romty version")
  end
end
