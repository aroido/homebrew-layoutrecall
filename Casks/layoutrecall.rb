cask "layoutrecall" do
  version "0.1.7"
  sha256 "24f2700566b311409aa5a65517e7aa132e2a41711d74bbe9885e62017d5eb9ec"

  url "https://github.com/aroido/layoutrecall/releases/download/v0.1.7/LayoutRecall-0.1.7.dmg"
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
