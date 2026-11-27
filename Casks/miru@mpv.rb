cask "miru@mpv" do
  version "0.4.0,202611271555"
  sha256 "f81d0ab0f73d06cf57b676eb3897c2301a2daf1bd3bc28ae57ada3f4098e7eee"

  url "https://github.com/zacaronii/homebrew-amatsubame/releases/download/mpv-final-2026-11-27/Miru-#{version.csv.first}-#{version.csv.second}.zip"
  name "Miru (mpv)"
  desc "Watch Jellyfin videos with tappable Japanese subtitles"
  homepage "https://amatsubame.com/miru/"

  # Miru's last mpv-only build, pinned: no script moves it (docs/AETHER_PLAN.md in the app repo).
  livecheck do
    skip "Pinned backup of the mpv build"
  end

  conflicts_with cask: ["miru", "miru@dev"]
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Miru.app"

  # The setup the apps share (group.com.amatsubame) stays: the other Amatsubame apps use it.
  zap trash: "~/Library/Containers/com.amatsubame.miru"
end
