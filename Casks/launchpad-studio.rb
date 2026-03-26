cask "launchpad-studio" do
  version "0.3.0"
  sha256 "32be2257565848ed01bf1bec16535c013bb8973ffaa54cdf9d323e71e5b68e43"

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
