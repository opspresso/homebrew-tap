class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.28.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "0484c005f0ec6267575f4a61c84c53d536c08f6c50255630e8c50f9a5aec19d6"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "50c85b50271bd79c7714c2705136f95f169d01c5b7e962c5ebc3c042e2463f3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "7b9fe0914c1d5aa717a5ac5246a54e6b42a5fe5842c1f7a38509c58407da2692"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "dae144228a512c2c6bb1df0f04bb47837d6e19e3023526cca259b694753af5f8"
    end
  end

  def install
    bin.install "romty"
  end
end
