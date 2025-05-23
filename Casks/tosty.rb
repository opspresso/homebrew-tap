cask "tosty" do
  version "0.6.7"
  sha256 "f2c33bf83929ba98082c917df10859d58fbdbafe9d1aa1352ea1a3a362f51faa"

  url "https://github.com/opspresso/tosty/releases/download/v#{version}/tosty-#{version}-arm64.dmg"
  name "Tosty"
  desc "A customizable shortcut launcher for macOS and Windows"
  homepage "https://tosty.io"

  app "Tosty.app"

  auto_updates true

  zap trash: [
    "~/Library/Application Support/Tosty",
    "~/Library/Application Support/tosty-app",
    "~/Library/Preferences/com.opspresso.Tosty.plist",
    "~/Library/Preferences/com.opspresso.tosty-app.plist",
    "~/Library/Saved Application State/com.opspresso.Tosty.savedState",
    "~/Library/Saved Application State/com.opspresso.tosty-app.savedState"
  ]
end
