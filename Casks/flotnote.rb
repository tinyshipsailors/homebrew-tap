cask "flotnote" do
  version "1.5.0"
  sha256 "ab1d977632aef9c0ee5893b279f06a98c2779f402952b26e76c87a2b45afbbee"

  url "https://github.com/tinyshipsailors/flotnote.app/releases/download/v#{version}/Flotnote-v#{version}.dmg",
      verified: "github.com/tinyshipsailors/flotnote.app/"
  name "Flotnote"
  desc "Floating Markdown notes for macOS"
  homepage "https://flotnote.app/"

  livecheck do
    url "https://raw.githubusercontent.com/tinyshipsailors/flotnote.app/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Flotnote.app"

  zap trash: [
    "~/Library/Application Scripts/com.flotnote.app",
    "~/Library/Containers/com.flotnote.app",
  ]
end
