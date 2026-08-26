class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.20.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "59ec99ede868ba8e56e1f171f5346b9d3bea6074f522e44e66431d91dd3a7904"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "97262ae412e752143164ad1c2cf86356fbd9cb7c9b7d7a32b19c3d9781eaa870"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "c6834c8a4dca14c46c4939455ce487fb89b259a42d1ad894bd9c02c6954dab4d"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "fca5795f9f89e487bf77c78e46a6072adf7016c3c2463f169a7b27868521c875"
    end
  end

  def install
    bin.install "romty"
  end
end
