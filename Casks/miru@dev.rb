cask "miru@dev" do
  version "0.4.0,202611281454"
  sha256 "23d7b993137efaa465ea28a1334d5652c1b8b3a09e72e0c26769aa7db18ecad9"

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
