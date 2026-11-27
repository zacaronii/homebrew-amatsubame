cask "yomu@dev" do
  version "0.4.0,202611272007"
  sha256 "6278adc87567f95c2fea6da9ade46751f43685e1be26ab43306bc3a5c8d057e5"

  url "https://github.com/zacaronii/homebrew-amatsubame/releases/download/dev/Yomu-#{version.csv.first}-#{version.csv.second}.zip"
  name "Yomu (Dev)"
  desc "Read manga and books from Kavita with Japanese dictionary lookup"
  homepage "https://amatsubame.com/yomu/"

  # Each Dev build replaces the last one: brew upgrade --cask yomu@dev.
  livecheck do
    skip "Dev builds come from scripts/upload-dev.sh"
  end

  conflicts_with cask: "yomu"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Yomu.app"

  # The setup the apps share (group.com.amatsubame) stays: the other Amatsubame apps use it.
  zap trash: "~/Library/Containers/com.amatsubame.yomu"
end
