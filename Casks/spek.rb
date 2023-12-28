cask "spek" do
  version "0.8.2.3"
  sha256 "6426c4c34ac8bcb2fa1020cb295e3c105ca912c853cbbe84d1d196a32bba361b"

  url "https://github.com/withmorten/spek-alternative/releases/download/#{version}/spek-alternative-#{version}.dmg"
  name "Spek"
  desc "Acoustic spectrum analyzer"
  homepage "https://github.com/withmorten/spek-alternative"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Spek.app"

  zap trash: "~/Library/Saved Application State/org.spek-project.savedState"
end
