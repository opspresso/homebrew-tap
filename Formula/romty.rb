class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.11.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "b45cefd3824ae0a6a91bcaebc4f5c5a971f7c9daf33e19264e434a45ee2fdc4a"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "1b714967e358226e40e0d54ad3099069afd39e0d5034258dac668e39a9aaf122"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "61337795207f08e406814f659d2b953e34219515468e65f10eb0f92f51c7a6d8"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "1cfa5a09aba12d682763a0cbdd84905db2a3e0fa09ab28cfa0d577bfc96ef028"
    end
  end

  def install
    bin.install "romty"
  end
end
