class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.24.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "ed7e0f30083c7e7fbebe655061a3749a2bfabea1fb63ea9c40b2491ccbb5e3fc"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "e714ac82d41b038ff50836727f9fa689f2175b4a958e5ed97464ad8feacba12a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "0ac64a5d3bd6487a68020c18986e4761d8e3988869224f640c80776737960124"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "1fdfc67570f5fe3ca0536eeb3caeeccfc5f8fe17ebfbf7853df1d27892cf7dd7"
    end
  end

  def install
    bin.install "romty"
  end
end
