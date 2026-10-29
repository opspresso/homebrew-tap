class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.49.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "eaaf439e6d36a792a75c7f4c140fe783a916c827d1880ad3c8bbb58fe3fc1ffb"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "eec929a0da6b5ce4267f014c5a83173547c31c8ea604ec692eb6cd292fc096b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "fad6efef91db0c3c2a810d5d484285b7bf10448f753d6378aa55b4596bdf349c"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "6b78d4b32822c5594612f5249dec985732d2ff18f1790e797f2dadeeb523724e"
    end
  end

  def install
    bin.install "romty"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/romty version")
  end
end
