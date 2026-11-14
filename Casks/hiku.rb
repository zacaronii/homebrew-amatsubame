cask "hiku" do
  version "0.2.1"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/zacaronii/amatsubame/releases/download/v#{version}/Hiku-#{version}.zip"
  name "Hiku"
  desc "Safari extension for Japanese dictionary lookup on any web page"
  homepage "https://amatsubame.com/hiku/"

  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Hiku.app"

  # The setup the apps share (group.com.amatsubame) stays: the other Amatsubame apps use it.
  zap trash: [
    "~/Library/Containers/com.amatsubame.hiku",
    "~/Library/Containers/com.amatsubame.hiku.extension",
  ]
end
