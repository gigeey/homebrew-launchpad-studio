cask "launchpad-studio" do
  version "0.9.0"
  sha256 "1953e6896e3d43e54f742e1e31cc182f0009b1a8b3f5a7804e1c41cb4843c7a6"

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
