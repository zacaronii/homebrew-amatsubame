cask "kiku" do
  version "0.3.0"
  sha256 "15ab92dd65619e4873e355f9282432f4e11cd7a5d02d1dc89d29b950b6383a6f"

  url "https://github.com/zacaronii/amatsubame/releases/download/v#{version}/Kiku-#{version}.zip"
  name "Kiku"
  desc "Listen to Audiobookshelf podcasts and audiobooks with Japanese transcripts"
  homepage "https://amatsubame.com/kiku/"

  livecheck do
    url :url
    strategy :github_releases
  end

  conflicts_with cask: "kiku@dev"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kiku.app"

  # The setup the apps share (group.com.amatsubame) stays: the other Amatsubame apps use it.
  zap trash: "~/Library/Containers/com.amatsubame.kiku"
end
