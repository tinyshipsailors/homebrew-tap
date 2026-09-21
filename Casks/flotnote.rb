cask "flotnote" do
  version "1.4.1"
  sha256 "942d9ab0fb7b45b0aef8b03f43b0988293b77ba8dcb6724a167648dbe2a328b4"

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
