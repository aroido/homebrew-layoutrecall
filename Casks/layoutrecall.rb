cask "layoutrecall" do
  version "0.1.6"
  sha256 "07f11743956a49b1dc63495ec61803994e6ce5130b2d070f896ca02e6fb7b4d4"

  url "https://github.com/aroido/layoutrecall/releases/download/v0.1.6/LayoutRecall-0.1.6.dmg"
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
