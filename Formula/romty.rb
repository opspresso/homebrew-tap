class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/nalbam/romty"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nalbam/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "fea1cad8bd1f1d88b0ac0aba27005880e9169e4990358c7e4f0a0450f5e5ead4"
    else
      url "https://github.com/nalbam/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "784b0b5a0098cd38e117b9fc5c079639e1d0cff8a9a06155980462e5929a4fc4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nalbam/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "01965f1285113487048820af35cd146bdaa846a302f1f32d60f94bb87a16fefb"
    else
      url "https://github.com/nalbam/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "07dec39b1ce2960a134c2e58906aaaef244b98de71fad0d574847e7f1e2b5728"
    end
  end

  def install
    bin.install "romty"
  end
end
