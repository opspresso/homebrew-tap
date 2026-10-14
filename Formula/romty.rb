class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.32.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "9e27c545820849dac130c2ea7f2c18242d1ea632e061115690423a2b1e7c60ba"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "b391537f330ed80129ab9e8b5468c83f4aef51e5d301714bd84ff8e404147cea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "efe267ec971a44e89afee4e6d204de57f55cbb55bd6636637877073d782221cb"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "9f6946cb8241d28697e6c46632e6c2c85d73acdfd687175d59d1fe3f0d1c9115"
    end
  end

  def install
    bin.install "romty"
  end
end
