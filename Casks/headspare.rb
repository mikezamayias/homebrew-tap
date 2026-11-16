cask "headspare" do
  version "0.1.7"
  sha256 "f1f0d32f4782b073638fe52e81c45f1f1f8677e8f48a26a844ea87b5186c0976"

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
