cask "kiku@dev" do
  version "0.4.0,202611281321"
  sha256 "ade7c86428fc1f5fd8cad6622f4813c5d6d609b7e8710e059836dd0b17865870"

  url "https://github.com/zacaronii/homebrew-amatsubame/releases/download/dev/Kiku-#{version.csv.first}-#{version.csv.second}.zip"
  name "Kiku (Dev)"
  desc "Listen to Audiobookshelf podcasts and audiobooks with Japanese transcripts"
  homepage "https://amatsubame.com/kiku/"

  # Each Dev build replaces the last one: brew upgrade --cask kiku@dev.
  livecheck do
    skip "Dev builds come from scripts/upload-dev.sh"
  end

  conflicts_with cask: "kiku"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Kiku.app"

  # The setup the apps share (group.com.amatsubame) stays: the other Amatsubame apps use it.
  zap trash: "~/Library/Containers/com.amatsubame.kiku"
end
