cask "hiku@dev" do
  version "0.4.0,202611281454"
  sha256 "b707b9bc15cf75e68e482ed4567c636b1ee00f14e88c9ebe6dfda7fa938bc76e"

  url "https://github.com/zacaronii/homebrew-amatsubame/releases/download/dev/Hiku-#{version.csv.first}-#{version.csv.second}.zip"
  name "Hiku (Dev)"
  desc "Safari extension for Japanese dictionary lookup on any web page"
  homepage "https://amatsubame.com/hiku/"

  # Each Dev build replaces the last one: brew upgrade --cask hiku@dev.
  livecheck do
    skip "Dev builds come from scripts/upload-dev.sh"
  end

  conflicts_with cask: "hiku"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Hiku.app"

  # The setup the apps share (group.com.amatsubame) stays: the other Amatsubame apps use it.
  zap trash: [
    "~/Library/Containers/com.amatsubame.hiku",
    "~/Library/Containers/com.amatsubame.hiku.extension",
  ]
end
