cask "miru@dev" do
  version "0.4.0,202611272334"
  sha256 "8185145c99cbc18b9e263758269f68afb97a83d5673f6fb60daa8381e9592f31"

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
