cask "launchpad-studio" do
  version "0.1.0"
  sha256 "f9f8133817bddb128da9b82c942134000d7c923ac04cbe4dcd3406e44c1f6952"

  url "https://github.com/gigeey/launchpad-studio-releases/releases/download/v#{version}/launchpad_studio_#{version}_universal.dmg"
  name "Launchpad Studio"
  desc "Launchpad Studio desktop application"
  homepage "https://github.com/gigeey/launchpad-studio-releases"

  depends_on macos: ">= :catalina"

  app "launchpad_studio.app"

  zap trash: [
    "~/Library/Application Support/com.ebongandrew.launchpad-studio",
    "~/Library/Caches/com.ebongandrew.launchpad-studio",
    "~/Library/Preferences/com.ebongandrew.launchpad-studio.plist",
  ]
end
