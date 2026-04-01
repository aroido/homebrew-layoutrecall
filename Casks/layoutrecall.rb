cask "layoutrecall" do
  version "0.1.3"
  sha256 "f20f465bcb8bb09d1ea67db207321a1800e3fe07d59f502120a04a03369f01a9"

  url "https://github.com/aroido/layoutrecall/releases/download/v0.1.3/LayoutRecall-0.1.3.dmg"
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
