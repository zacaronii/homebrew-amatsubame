cask "hiku@dev" do
  version "0.4.0,202611271440"
  sha256 "e0f627e5dcefaa8022e5efdbdc4375407cf48c84f26a862b8e2c69090f645034"

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
end
