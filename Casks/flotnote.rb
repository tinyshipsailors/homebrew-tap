cask "flotnote" do
  version "1.9.0"
  sha256 "2645cacd491d90ae75109a96cb2348f2bd8c0c4e08827af58425e414eba05c32"

  url "https://github.com/tinyshipsailors/flotnote.app/releases/download/v#{version}/Flotnote-v#{version}.dmg"
  name "Flotnote"
  desc "Floating Markdown notepad"
  homepage "https://flotnote.app/"

  livecheck do
    url "https://raw.githubusercontent.com/tinyshipsailors/flotnote.app/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Flotnote.app"

  zap trash: [
    "~/Library/Application Scripts/com.flotnote.app",
    "~/Library/Containers/com.flotnote.app",
  ]
end
