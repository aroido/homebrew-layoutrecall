cask "layoutrecall" do
  version "0.1.5"
  sha256 "50f2f076cbf8379b9fbf3a89b2ce4df10a9c9807b22de48b7d269f82e0123af9"

  url "https://github.com/aroido/layoutrecall/releases/download/v0.1.5/LayoutRecall-0.1.5.dmg"
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
