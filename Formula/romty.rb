class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.34.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "fd16c677b4cf6de6a561cf4c2aafd595cf49940e8128580e3d2bad10906603ab"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "c9238af1964b3bfb4c05e2abde50a885cb37751947b7c230c16c91f62909e950"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "d59322db21f37a7144538b56d04fa40a0182bf0c88aa0d0f5567df8df6626226"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "021ab808b58ca432b2887ca4439307a6bd61359df9d4ab418a215b049a0747de"
    end
  end

  def install
    bin.install "romty"
  end
end
