cask "toast" do
  version "0.9.1"
  sha256 "02b0c076ba9a89ceda8b8b0237c81f501bae5570276d6b1db17e47f6416cc4cc"

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
