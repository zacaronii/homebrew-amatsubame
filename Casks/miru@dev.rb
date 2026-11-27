cask "miru@dev" do
  version "0.4.0,202611272107"
  sha256 "a940a74895015e628be28dc5156b67eb1210095aa9db1f4eedf1bae9c3fddcf2"

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
