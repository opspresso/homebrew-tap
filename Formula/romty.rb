class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "2a096b12f58c785ae33cfd1f0cbbbebd30d30a7977f564af90fd90d2fb60c9ff"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "216fb7748d132814c99c1b52901b957d3236b021023f6fce13adea48e4beb5bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "0b3b80cc0b90368e94eae4bfbba594888f9c21b467525dcc5f88911717111f5c"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "940011dae70ab43d8a1c5764957b87e063ec90de20a7620f10f1a2dedba6ea26"
    end
  end

  def install
    bin.install "romty"
  end
end
