class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.41.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "0df68934b53ae89f377aa8e7551a4caa78bcf5323fcd3d834af4f0359534458c"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "2619a6e7fcea560803db30de76bd0f19a519598df305ba1d248f11455c6b824c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "bb4be7c060289ada4dd0c7a608b17b7f736d18d1a36c1b462bf61071300ba1a1"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "be083092bddf632a394341c46c2d8e4b2383b0abd91ef91b607b44bf4b03b763"
    end
  end

  def install
    bin.install "romty"
  end
end
