class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.41.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "863166fed19b4cc09fb3c434ee6c263b3d22b74103a27480604c10e27f8d1114"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "8d8a71145492dfd57a4ba884b81df22998700accd22d0f39cac19412eb8afeac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "570c8c88f9dca76c2ef077b81020d8ee21ce59b9694bce63a2de80a7e74aa06e"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "2250d128169eb6d3f106b6eacc4fcdbf0ab11e64c332f2087dfb637bf51e308f"
    end
  end

  def install
    bin.install "romty"
  end
end
