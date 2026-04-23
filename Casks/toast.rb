cask "toast" do
  version "0.9.10"
  sha256 "9fde4ac22765d9d8c40eb60fca11f868449f8e4aea3bb19e0bf0d2ff227b0528"

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
