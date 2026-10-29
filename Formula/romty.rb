class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.48.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "69d0d2073ee907a7649abeef8930a6ddeab9f83ba53683fa8fb15ad3df6c36ae"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "25722b8ee2859df01c95d29f4eaec20e52df11b9528dc452c7463ce3ef6be540"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "09e7af91029eb4ac56b760c3b0edc796849e91a1b0418a7fba84de6dfe6d0b7e"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "45d36dc5c1369be7e74ebb9e8cd6ce179fe5365cf3af472ee8fed5b0e44c458d"
    end
  end

  def install
    bin.install "romty"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/romty version")
  end
end
