class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "59428571106fa8ae73308f3944d6ff31917e6691ab9bd53275d76db5f119065e"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "3beb08c37f814ee643f5d4440835d95c9cd6c31e47062166d37dcc0324f15787"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "651501b62f968afc49d9b8363679575a4f6a26eeffb28ca53c5315c5167994ba"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "4ebf7ed9e0e4d7b47f0a4fa291c1c22d69f261ca232bb6251f5a61629a51faa9"
    end
  end

  def install
    bin.install "romty"
  end
end
