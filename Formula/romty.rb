class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/nalbam/romty"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nalbam/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "c589352bc0e7233b1d9aa41ad545ca2b841789b2a891a76b46a66181750a12c8"
    else
      url "https://github.com/nalbam/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "9ad7e2521efe67133c2bbcca5d69a826b82e11373ab497de1164baeadfe087ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/nalbam/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "faff10e43d53c2d4a4d032595a8d2bc71d57a84b331fc3b4e30d7bd0e0825cf6"
    else
      url "https://github.com/nalbam/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "0ba5d5ca00a486b83180ee7aa7e337b6cc8ea0a5ea57d53dda848820176f5705"
    end
  end

  def install
    bin.install "romty"
  end
end
