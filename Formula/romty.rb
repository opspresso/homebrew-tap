class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "960b01d3fddbe5c09f5044a02134dffc5cc529ab4556e5a1e5ff516e8164fbfc"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "888d5e460db24e8c5b44f29c69d013e3853c08132f2cc8072ac43ea012e60461"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "d73ed605347211acce0dd3962f249c8c45756f0825b039729db52a2d2c2fa882"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "f147a13419311894953b2a63378842f321ff08bd3afe9d20781527f40e064695"
    end
  end

  def install
    bin.install "romty"
  end
end
