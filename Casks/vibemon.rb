cask "vibemon" do
  version "2.2.13"
  sha256 "0895c8b66c8a6f83b7b1dbc43f0e74d6e61ee78751b1745a719e4205d5dada7e"

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
