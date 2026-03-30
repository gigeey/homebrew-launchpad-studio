cask "launchpad-studio" do
  version "0.6.0"
  sha256 "09c9b9c2ee72d8ec925b242d0a98e92e0c1e4e83da897d3314302fb059c3ac1c"

  url "https://github.com/gigeey/launchpad-studio-releases/releases/download/v#{version}/Launchpad_Studio_universal.dmg"
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
