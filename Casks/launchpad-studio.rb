cask "launchpad-studio" do
  version "0.3.0"
  sha256 "281aaf505443a9fa9f7ec01e5be9f3b51a9a39abe011dad3490ca82bf654b639"

  url "https://github.com/gigeey/launchpad-studio-releases/releases/download/v#{version}/Launchpad_Studio_#{version}_universal.dmg"
  name "Launchpad Studio"
  desc "Launchpad Studio desktop application"
  homepage "https://github.com/gigeey/launchpad-studio-releases"

  depends_on macos: ">= :catalina"

  app "Launchpad Studio.app"

  zap trash: [
    "~/Library/Application Support/com.gigeey.launchpad-studio",
    "~/Library/Caches/com.gigeey.launchpad-studio",
    "~/Library/Preferences/com.gigeey.launchpad-studio.plist",
  ]
end
