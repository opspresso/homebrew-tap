class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.41.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "e7255047c9d9b12f00b191d050ae5287c6880b9f6f09d2aa6a9909251ee5ec4b"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "dc7e117968fa14027d4c239c740ca7979d477e358efb382336eb42f889a896fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "72f41381f9cdcef5032f132995de94da033d9a0426a3fdb30dc96254bd3bdffe"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "9b95e9d065187c84549d7eb00ed1d5580bf9a5faf843711e14155a61b7f76c0b"
    end
  end

  def install
    bin.install "romty"
  end
end
