cask "layoutrecall" do
  version "0.1.10"
  sha256 "75c6c6793ff8093bed37c377b5d994fd56f18ba5ceabdbb43783bdeac88d3389"

  url "https://github.com/aroido/layoutrecall/releases/download/v0.1.10/LayoutRecall-0.1.10.dmg"
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
