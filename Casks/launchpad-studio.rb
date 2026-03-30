cask "launchpad-studio" do
  version "0.6.0"
  sha256 "f29340e4faec08af6da814e300632c96d403fdbecd13321fe2fdcb0f4a238c3f"

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
