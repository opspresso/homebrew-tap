class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.37.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "4a56f4790cb89f8ce527a16936109ab86fcd6f1fb70025d1c0f2f2780368f2be"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "2787dd99d8be74c36bec984c999506437e6b3c7c378b9054a67ec3bfe33deebd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "66ce1e82ecaec77e1724eb6eef703dfd2135b2fe0b1a5f89b6ef04ab13aa1e05"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "e25fbbea0ed180e72f7e415d145890bd0028c8bc50c41e0d60f47de7eb8f0918"
    end
  end

  def install
    bin.install "romty"
  end
end
