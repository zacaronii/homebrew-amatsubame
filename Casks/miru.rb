cask "miru" do
  version "0.3.0"
  sha256 "c20c3d3f8a204d54a1ba84b6260b65aaee1a300243a6495c38430ad6c3e9112b"

  url "https://github.com/zacaronii/amatsubame/releases/download/v#{version}/Miru-#{version}.zip"
  name "Miru"
  desc "Watch Jellyfin videos with tappable Japanese subtitles"
  homepage "https://amatsubame.com/miru/"

  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Miru.app"

  # The setup the apps share (group.com.amatsubame) stays: the other Amatsubame apps use it.
  zap trash: "~/Library/Containers/com.amatsubame.miru"
end
