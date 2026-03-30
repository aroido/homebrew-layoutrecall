cask "layoutrecall" do
  version "0.1.1"
  sha256 "3da822a4e3980f8645820e36f88f37a55040d6c54f10b293af500f1242dfda40"

  url "https://github.com/aroido/layoutrecall/releases/download/v0.1.1/LayoutRecall-0.1.1.dmg"
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
