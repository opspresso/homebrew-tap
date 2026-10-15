cask "vibemon" do
  version "3.8.10"
  sha256 "e4ff5efa19d5553cce6457dea1ec5d31205d7b2d0dc97734fd47cd94322b5068"

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
