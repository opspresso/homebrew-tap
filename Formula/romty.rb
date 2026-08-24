class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/nalbam/romty"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nalbam/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "61dd79f8f9d796a96f94cf69595290d2a19ef36ca35e36c70d3129f6da095a8b"
    else
      url "https://github.com/nalbam/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "c15572de13491e978d48dc0e47444c26fbd334934d2ffb8fd59a9c96ef739d2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nalbam/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "f3ca20ed1a01961d1ffb5f118b81170698a4d8598d233ca3cb6a305f088b1837"
    else
      url "https://github.com/nalbam/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "2d963ad1d73a4250af2147fc24cb46cbcb04d607ed99c1b63487ddd756a7f83e"
    end
  end

  def install
    bin.install "romty"
  end
end
