class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.15.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "1be5119a1b9a6f1924295fb03d9417998f66a4504e84f9f237a1fc90c6b9bf4f"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "5a436557cf1b3c70a0997f3537fcfa179b246c96f1bf0e0b887bd3be9832bcec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "dfac6508b0934a6e90b03a8d86fe26915955614b9444c0b0572b7b83a1fa8ce4"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "2ae63b1abd71d28359c671de4089b37d6e7d8596eafaff0f2473c83403b21420"
    end
  end

  def install
    bin.install "romty"
  end
end
