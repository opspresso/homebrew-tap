class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.42.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "b5ba790a5931f6da2b3ce6435858e55e43501bcf60222de8fc49bafe2be3953b"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "612d50503fd91d264dfd24b0cc3b2fe198130ab324f8ceee76a648a484272ef4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "a5dfc1cacc5fc090656a44fcc1470ab63dceff31b5b8b030f0ac3f58889d2a68"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "29a44eb3dcde3573e76f5a8b72b302da1d2b8d4cfd3839fdaa5fdfd08c964600"
    end
  end

  def install
    bin.install "romty"
  end
end
