cask "hiku" do
  version "0.4.0"
  sha256 "b707b9bc15cf75e68e482ed4567c636b1ee00f14e88c9ebe6dfda7fa938bc76e"

  url "https://github.com/zacaronii/amatsubame/releases/download/v#{version}/Hiku-#{version}.zip"
  name "Hiku"
  desc "Safari extension for Japanese dictionary lookup on any web page"
  homepage "https://amatsubame.com/hiku/"

  livecheck do
    url :url
    strategy :github_releases
  end

  conflicts_with cask: "hiku@dev"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Hiku.app"

  # The setup the apps share (group.com.amatsubame) stays: the other Amatsubame apps use it.
  zap trash: [
    "~/Library/Containers/com.amatsubame.hiku",
    "~/Library/Containers/com.amatsubame.hiku.extension",
  ]
end
