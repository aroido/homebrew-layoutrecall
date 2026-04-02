cask "layoutrecall" do
  version "0.1.8"
  sha256 "77e5aeac29c14b2ace96601b5c0ea3da3df08fb53a9de983d0df7c26b0bffc45"

  url "https://github.com/aroido/layoutrecall/releases/download/v0.1.8/LayoutRecall-0.1.8.dmg"
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
