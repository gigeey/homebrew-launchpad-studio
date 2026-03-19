cask "launchpad-studio" do
  version "0.1.0"
  sha256 "15bcb7752d179b928a2ee66835a6540b5ac76373e96bd245a083973006c3eeba"

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
