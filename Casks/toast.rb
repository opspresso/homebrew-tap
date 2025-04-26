cask "toast" do
  version "0.5.19"
  sha256 :no_check

  url "https://github.com/opspresso/toast-dist/releases/download/v#{version}/Toast-#{version}-arm64.dmg"
  name "Toast"
  desc "A customizable shortcut launcher for macOS and Windows"
  homepage "https://app.toast.sh"

  app "Toast.app"

  auto_updates true

  zap trash: [
    "~/Library/Application Support/toast-app",
    "~/Library/Preferences/com.opspresso.toast-app.plist",
    "~/Library/Saved Application State/com.opspresso.toast-app.savedState"
  ]
end
