cask "miru@dev" do
  version "0.4.0,202611281321"
  sha256 "20965b3d9ae6ec187fedee965f4583ab0f1e75e75ec9b169dd9d8ac7cf5761e8"

  url "https://github.com/zacaronii/homebrew-amatsubame/releases/download/dev/Miru-#{version.csv.first}-#{version.csv.second}.zip"
  name "Miru (Dev)"
  desc "Watch Jellyfin videos with tappable Japanese subtitles"
  homepage "https://amatsubame.com/miru/"

  # Each Dev build replaces the last one: brew upgrade --cask miru@dev.
  livecheck do
    skip "Dev builds come from scripts/upload-dev.sh"
  end

  conflicts_with cask: ["miru", "miru@mpv"]
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Miru.app"

  # The setup the apps share (group.com.amatsubame) stays: the other Amatsubame apps use it.
  zap trash: "~/Library/Containers/com.amatsubame.miru"
end
