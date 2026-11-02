cask "headspare" do
  version "0.1.1"
  sha256 "32e75023674683f05a775f1a9c9b61946f87a18da2f81ff19d9bcd8c7b4c0232"

  url "https://github.com/mikezamayias/headspare-releases/releases/download/mac-v#{version}/Headspare-#{version}.zip"
  name "Headspare"
  desc "Shows how much of each AI subscription limit is left"
  homepage "https://headspare.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Headspare.app"

  zap trash: [
    "~/Library/Containers/com.mikezamayias.headspare",
    "~/Library/Containers/com.mikezamayias.headspare.widget",
    "~/Library/Group Containers/DW97QZ7F3B.com.mikezamayias.headspare",
  ]
end
