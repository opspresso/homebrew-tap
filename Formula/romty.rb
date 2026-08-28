class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.26.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "2a2c51e8479e815392a193eefff13e9e5b70438fae72647904e4ae1521aed847"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "fa1ca07c81d162f98afdd6db461a9a5957f1e241cadb5697543a4c5df8826af8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "2b381a1997071f86c3defef5e328457b1a3c1058187bf89a07665a3884c3931a"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "99fcc29dd95ab05c0520b13a2b771ac8ffceb44a8fde1eaa99633abe29dd641f"
    end
  end

  def install
    bin.install "romty"
  end
end
