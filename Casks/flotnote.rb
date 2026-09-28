cask "flotnote" do
  version "1.6.0"
  sha256 "8c855b33b4fea8892836707ba7463e74e2503d8b1dbe3df2e9b0e26d86a5b49c"

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
