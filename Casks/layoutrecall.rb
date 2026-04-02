cask "layoutrecall" do
  version "0.1.9"
  sha256 "378889e66d70312d885c10676bcfb4fe4302882316e1d726e82f49f84d880ada"

  url "https://github.com/aroido/layoutrecall/releases/download/v0.1.9/LayoutRecall-0.1.9.dmg"
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
