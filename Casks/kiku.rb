cask "kiku" do
  version "0.2.1"
  sha256 "f742658788f024f6a9411b5fb83e64b4de6ae3f15150a7535259ca151df6ffb5"

  url "https://github.com/zacaronii/amatsubame/releases/download/v#{version}/Kiku-#{version}.zip"
  name "Kiku"
  desc "Listen to Audiobookshelf podcasts and audiobooks with Japanese transcripts"
  homepage "https://amatsubame.com/kiku/"

  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kiku.app"

  # The setup the apps share (group.com.amatsubame) stays: the other Amatsubame apps use it.
  zap trash: "~/Library/Containers/com.amatsubame.kiku"
end
