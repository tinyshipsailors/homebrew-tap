cask "walasr" do
  version "0.3.0"
  sha256 "1471e5a133d91ad76aabb070227ce8d34b68e7a7ac73b55b78c156da00037b63"

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
