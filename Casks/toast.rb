cask "toast" do
  version "0.5.8"
  sha256 :no_check

  url "https://github.com/opspresso/toast-dist/releases/download/v#{version}/Toast-#{version}-arm64.dmg"
  name "Toast"
  desc "A customizable shortcut launcher for macOS and Windows"
  homepage "https://app.toast.sh"

  app "Toast.app"

  auto_updates true

  zap trash: [
    "~/Library/Application Support/Toast",
    "~/Library/Preferences/com.opspresso.Toast.plist",
    "~/Library/Saved Application State/com.opspresso.Toast.savedState"
  ]
end
