class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.21.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "2145fbf841e4cb778bddacddfd368899e85fca408506514e599d9304a7317b3a"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "cdb9ff4f380b3a61c5793dc1f29e0a9a8e44866e80729acebfd25e2a1ecf7c29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "70ea5f15d7ec9ca237bd7090075569c98782883b5fb786276bde34a50a0ceba9"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "c8fa9163d5a03452f5290f1df9a8cc5e4956183a9326e4575721f3603c091012"
    end
  end

  def install
    bin.install "romty"
  end
end
