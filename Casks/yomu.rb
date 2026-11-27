cask "yomu" do
  version "0.3.0"
  sha256 "4dead6e6d22b367896790030860fd34391e0328a2168a17ac52f69ca39ccb23c"

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
