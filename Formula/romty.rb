class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.41.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "157fa7a873cb6bb87f8d032dfe2e51a770183272adf1b29d28370d7e0bd12e2e"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "d8a0dae85b25157a7549941b130fe06ae28e2732ff0505e9af191e6e791611d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "5875dd6537e83cb5bb1625f3f245ab591dedfa2c07816ed5a87499241edfefeb"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "f55f6f00fba40b43d8a0c1a84e5abb9dba78d9e25e5328e3795cfd36d8bd8427"
    end
  end

  def install
    bin.install "romty"
  end
end
