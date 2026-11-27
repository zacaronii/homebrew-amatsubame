cask "hiku@dev" do
  version "0.4.0,202611272334"
  sha256 "140fe5719db98fb7bd32aa62398882964eedcb74869d7861e045dd4de18ce428"

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
