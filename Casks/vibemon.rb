cask "vibemon" do
  version "3.4.2"
  sha256 "fd6f39dc412396c7f528d3bd6c864d1628f40ccc35558de1bc2d7cbd52ee42a3"

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
