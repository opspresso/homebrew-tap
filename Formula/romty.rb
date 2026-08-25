class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.11.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "e36890b8492860c40bae1121e379b9fcd54ee8c6c19c235999a22163d3a8e379"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "5733fbcb1e5433b556ee51afe5f069de0c0273efb304f86e01a8f0808f4aaecc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "6319f1a1e86f5528ef608b48bf6a3317538dff9f63f20f4a2457b8247be63737"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "ae08d695aa25b238c06284ca5cc57727b01acc05966c332047520f364a0197e3"
    end
  end

  def install
    bin.install "romty"
  end
end
