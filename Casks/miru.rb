cask "miru" do
  version "0.4.0"
  sha256 "5c4845a7222315f8befcd02b9b65ef66fc9740590d4293315f0937b33a6bd517"

  url "https://github.com/zacaronii/amatsubame/releases/download/v#{version}/Miru-#{version}.zip"
  name "Miru"
  desc "Watch Jellyfin videos with tappable Japanese subtitles"
  homepage "https://amatsubame.com/miru/"

  livecheck do
    url :url
    strategy :github_releases
  end

  conflicts_with cask: ["miru@dev", "miru@mpv"]
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Miru.app"

  # The setup the apps share (group.com.amatsubame) stays: the other Amatsubame apps use it.
  zap trash: "~/Library/Containers/com.amatsubame.miru"
end
