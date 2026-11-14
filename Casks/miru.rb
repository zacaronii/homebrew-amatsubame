cask "miru" do
  version "0.2.1"
  sha256 "99a32a28bf5eba83af0868b5742e3cf581809453ffc1f0ea96d52c33ed46941e"

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
