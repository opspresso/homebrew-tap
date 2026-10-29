class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.49.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "969ce85f415e5d50d3c40dea878b2a01de49ccae9c70a836f6330fd171bceac4"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "9c6d21bb5ded99e20f4242ba47c8ce998daa5ef7fb380064c550d3ca6c3ffd90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "3d27fd2da35858cdedbf7479a1a10d930032a4afe3f11284151121229b280c31"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "6aee6e686941073764f22d7592971052fdb242bceac64c4288a079670faddeda"
    end
  end

  def install
    bin.install "romty"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/romty version")
  end
end
