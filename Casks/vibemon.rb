cask "vibemon" do
  version "2.2.1"
  sha256 "c8d7fef9f4ebb877a13417db8f34a17c7fca8724ee35a0b37a9f3c83556033cf"

  url "https://github.com/opspresso/vibemon-app/releases/download/v#{version}/VibeMon-#{version}-arm64.dmg"
  name "VibeMon"
  desc "Real-time status monitor for AI assistants with pixel art character display"
  homepage "https://vibemon.io"

  app "VibeMon.app"

  auto_updates true

  zap trash: [
    "~/Library/Application Support/VibeMon",
    "~/Library/Preferences/com.opspresso.vibemon.plist",
    "~/Library/Saved Application State/com.opspresso.vibemon.savedState"
  ]
end
