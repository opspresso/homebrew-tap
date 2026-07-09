cask "toast" do
  version "0.16.2"
  sha256 "46889007be5c9f89e5060a28b01fd9a3b28937bc2a08ba7ac71efa927398160e"

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
