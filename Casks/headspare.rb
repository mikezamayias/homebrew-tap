cask "headspare" do
  version "0.1.9"
  sha256 "639758373135263a88cece5e9d3870ec664c25f5cf05173339f7dda5295cb805"

  url "https://github.com/mikezamayias/headspare-releases/releases/download/mac-v#{version}/Headspare-#{version}.zip"
  name "Headspare"
  desc "How much AI you have to spare"
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
