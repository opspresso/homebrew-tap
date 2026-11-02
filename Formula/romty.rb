class Romty < Formula
  desc "Persistent terminal workspace manager"
  homepage "https://github.com/opspresso/romty"
  version "0.50.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_arm64.tar.gz"
      sha256 "143095f2f7dd04f15348e7ecb830997e0ba73322dc5789af416cd96696bae2a2"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_darwin_amd64.tar.gz"
      sha256 "7b381e5323e993e3068a43eae900f2d2a85d2b1459ac224eb0dca49526d93431"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_arm64.tar.gz"
      sha256 "b64d60d47731069c4ad99bc182d067b5e0195ce189a5b6443b51326209a03882"
    else
      url "https://github.com/opspresso/romty/releases/download/v#{version}/romty_#{version}_linux_amd64.tar.gz"
      sha256 "86a15e1b865484fe1215bc8156cb66eac4f8716ebbfb1775adae1299525fd9f2"
    end
  end

  def install
    bin.install "romty"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/romty version")
  end
end
