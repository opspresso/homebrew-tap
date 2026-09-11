class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.31.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "f582260e01cf1fc40aa145ced9e89bae2ae953db41704443279db86ca666375b"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "c78dfafb19f80c77c6aca4d420331bb0b2b3a2300797928911a558a6e7e8f062"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "84b3fd55f64c549b8cff41ad8b51744a7576b40faf71840ddd1ae2c505dd1289"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "a1ebae11a71cfc52263c2227d9455c3925e2e25ab51eb50e3d52b7f5fdd8e612"
    end
  end

  def install
    bin.install "romty"
  end
end
