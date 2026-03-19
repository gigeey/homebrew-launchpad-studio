cask "launchpad-studio" do
  version "0.1.0"
  sha256 "473f7c5664e3ccbac3ccc438edb4d0f7cfb83998726fb81fe526eac1c6a9963f"

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
