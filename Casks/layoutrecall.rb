cask "layoutrecall" do
  version "0.1.0"
  sha256 "53bcd523a9dcdcd3c1d5e651a5a7a895dd4a39b6b7c94b8a4992003fb8fad0ae"

  url "https://github.com/aroido/layoutrecall/releases/download/v0.1.0/LayoutRecall-0.1.0.dmg"
  name "LayoutRecall"
  desc "Restore saved display layouts when identical monitors get scrambled"
  homepage "https://github.com/aroido/layoutrecall"

  depends_on arch: :arm64

  app "LayoutRecall.app"

  auto_updates true

  zap trash: [
    "~/Library/Application Support/LayoutRecall",
    "~/Library/Preferences/com.aroido.layoutrecall.plist",
  ]
end
