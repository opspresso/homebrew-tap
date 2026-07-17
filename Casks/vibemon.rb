cask "vibemon" do
  version "2.2.0"
  sha256 "1f3b2b34c4c27b082f82acd0180f2bac454251c2703b33958be7ed82a12c9ec4"

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
