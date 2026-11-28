cask "kiku" do
  version "0.4.0"
  sha256 "252c6c36a8d9356dd6f773484559c416a7a83f7702ea5c191488bf973a683b40"

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
