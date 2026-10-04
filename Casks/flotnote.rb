cask "flotnote" do
  version "1.6.1"
  sha256 "5247f45797f075259b5947c1ccc92224c8145aaae8378d2ee22702c862c014c2"

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
