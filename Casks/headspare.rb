cask "headspare" do
  version "0.1.2"
  sha256 "d10edd894ccbd349c594aa80682189a507e2a6f6ea98e69a6dbe41d742cb6467"

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
