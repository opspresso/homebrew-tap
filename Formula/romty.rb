class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.39.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "8d3423881edf221853c504de67cd056162d729396da0ad552acc1dea60b754de"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "772aab4c21f1acefcffe53c5537166cf54743406b49a0a7ac068716eee6a3e91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "36d162a70310909b72fdd3234e3e6613b01b6a1e0fc92bd208c6c8fef532772d"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "9164a1319bb7d2b9942af101cc2510f98513cc5a908135a0575c1234b75ed699"
    end
  end

  def install
    bin.install "romty"
  end
end
