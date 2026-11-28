cask "kiku@dev" do
  version "0.4.0,202611280026"
  sha256 "f635957ff79b85d25a41e9b247947a6f0c22b0dfd46b27f1478ba1d0f4d0041e"

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
