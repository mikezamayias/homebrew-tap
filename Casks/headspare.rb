cask "headspare" do
  version "0.1.0"
  sha256 "65ce9cbc6e95d9d13424aec9c3cb76bbd6a7d2439d6f6200bf760d59d0eba608"

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
