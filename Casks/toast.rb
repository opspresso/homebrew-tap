cask "toast" do
  version "0.8.3"
  sha256 "f1770b9ed74356905f1fc3f2b666399c59b205413f25204a41a253dfa832b303"

  url "https://github.com/opspresso/toast/releases/download/v#{version}/Toast-#{version}-arm64.dmg"
  name "Toast"
  desc "A customizable shortcut launcher for macOS and Windows"
  homepage "https://toastapp.io"

  app "Toast.app"

  auto_updates true

  zap trash: [
    "~/Library/Application Support/Toast",
    "~/Library/Application Support/toast-app",
    "~/Library/Preferences/com.opspresso.Toast.plist",
    "~/Library/Preferences/com.opspresso.toast-app.plist",
    "~/Library/Saved Application State/com.opspresso.Toast.savedState",
    "~/Library/Saved Application State/com.opspresso.toast-app.savedState"
  ]
end
