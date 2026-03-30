cask "layoutrecall" do
  version "0.1.2"
  sha256 "3e97b508e43f79c0855c412ef2fcd458d9f83a7e9b48b22b2dd8cd828477c137"

  url "https://github.com/aroido/layoutrecall/releases/download/v0.1.2/LayoutRecall-0.1.2.dmg"
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
