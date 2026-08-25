class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.14.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "b2786b9620a0d3b4169fe0fef1048913124906783e29e4fb024872a12c3c5ae1"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "c1a3996c1fe05f8d26e3cc26790eff5cee53324b2a1b9a1468912d896d05229e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "844645c29ee6db236b75491208fce78dc92a43087dd84dd78fccaed8fb1102f5"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "4604d5039e6e104b3ec0bdbb39b127741a765d40aae92b2b2659c96a4605385f"
    end
  end

  def install
    bin.install "romty"
  end
end
