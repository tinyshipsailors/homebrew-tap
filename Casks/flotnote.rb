cask "flotnote" do
  version "1.9.1"
  sha256 "2e490d9465ace7ab814e1282cec8c3ceb6ce0b400f8cada374b7c108f3d1d323"

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
