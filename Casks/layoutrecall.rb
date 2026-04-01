cask "layoutrecall" do
  version "0.1.4"
  sha256 "0df492a4470dc96e56c92d45b60639205fb7733b333b7b788bcb463e43d90853"

  url "https://github.com/aroido/layoutrecall/releases/download/v0.1.4/LayoutRecall-0.1.4.dmg"
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
