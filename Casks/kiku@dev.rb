cask "kiku@dev" do
  version "0.4.0,202611271440"
  sha256 "0e275f3ff00ac9372ae44e191ab76e8b3ef4b609387b953776aeb1f9b48e62fc"

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
