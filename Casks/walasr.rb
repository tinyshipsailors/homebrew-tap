cask "walasr" do
  version "0.2.1"
  sha256 "1bf84fae68004f28f995d71e7cb17472e91bdb8cdf0108f028b5b41d8a8fcd07"

  url "https://github.com/tinyshipsailors/walasr.app/releases/download/v#{version}/Walasr-v#{version}.dmg"
  name "Walasr"
  desc "Prayer times and iqamah countdown in the menu bar"
  homepage "https://walasr.app/"

  livecheck do
    url "https://raw.githubusercontent.com/tinyshipsailors/walasr.app/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Walasr.app"

  zap trash: [
    "~/Library/Application Support/Walasr",
    "~/Library/Caches/com.tinyshipsailors.walasr",
    "~/Library/HTTPStorages/com.tinyshipsailors.walasr",
    "~/Library/Preferences/com.tinyshipsailors.walasr.plist",
    "~/Library/Saved Application State/com.tinyshipsailors.walasr.savedState",
  ]
end
