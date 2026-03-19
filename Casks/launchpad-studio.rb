cask "launchpad-studio" do
  version "0.1.0"
  sha256 "c4e396ef0876edca484124d5af43d849acecf24204cb069269d02ff8155ca907"

  url "https://github.com/gigeey/launchpad-studio-releases/releases/download/v#{version}/launchpad_studio_#{version}_aarch64.dmg"
  name "Launchpad Studio"
  desc "Launchpad Studio desktop application"
  homepage "https://github.com/gigeey/launchpad-studio-releases"

  depends_on macos: ">= :catalina"
  depends_on arch: :arm64

  app "launchpad_studio.app"

  zap trash: [
    "~/Library/Application Support/com.ebongandrew.launchpad-studio",
    "~/Library/Caches/com.ebongandrew.launchpad-studio",
    "~/Library/Preferences/com.ebongandrew.launchpad-studio.plist",
  ]
end
