class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.40.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "f39e0304e8280a41d0c4df2084747f30a977cec7707368848688431972f65580"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "453c966bbfea7fcce53c4f56d021f58831d70cec0d46fa0fe1ca510694e39093"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "3196f52b8f55a3385be972ef07699985a78ddafafcc52c066f90795576ca8a62"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "876a53690377d8bd139df791bab174cb5ce29c704f734aae7f7184e6a3299826"
    end
  end

  def install
    bin.install "romty"
  end
end
