class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.21.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "ac50dc7291eba135650a423bf185d876fc3ae4509edf5aaef8594d9e18b09e6a"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "8bc34efce0235f2a0da0b60d29fbe78772cf607e52960e0ac956d02361a99cdc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "5a08c62b43ac7a89221aafe2a3ffda8f39348f3144d90617a68b0fa828a0a66c"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "0690e2f85433ed096eca6e873c3332f1411e412a1789a38ee47171d4a3d92300"
    end
  end

  def install
    bin.install "romty"
  end
end
