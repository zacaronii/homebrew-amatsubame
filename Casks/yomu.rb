cask "yomu" do
  version "0.2.1"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/zacaronii/amatsubame/releases/download/v#{version}/Yomu-#{version}.zip"
  name "Yomu"
  desc "Read manga and books from Kavita with Japanese dictionary lookup"
  homepage "https://amatsubame.com/yomu/"

  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Yomu.app"

  # The setup the apps share (group.com.amatsubame) stays: the other Amatsubame apps use it.
  zap trash: "~/Library/Containers/com.amatsubame.yomu"
end
