cask "toast" do
  version "0.8.19"
  sha256 "076b520a0655a5a5befd5c1555537fa285cb2b385111a44e94d6e97c5ac46fd2"

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
