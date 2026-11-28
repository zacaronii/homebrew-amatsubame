cask "yomu" do
  version "0.4.0"
  sha256 "0aab81a276226c16f986924ce587038a836737ab2741c5581460856b3d739809"

  url "https://github.com/zacaronii/amatsubame/releases/download/v#{version}/Yomu-#{version}.zip"
  name "Yomu"
  desc "Read manga and books from Kavita with Japanese dictionary lookup"
  homepage "https://amatsubame.com/yomu/"

  livecheck do
    url :url
    strategy :github_releases
  end

  conflicts_with cask: "yomu@dev"
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Yomu.app"

  # The setup the apps share (group.com.amatsubame) stays: the other Amatsubame apps use it.
  zap trash: "~/Library/Containers/com.amatsubame.yomu"
end
