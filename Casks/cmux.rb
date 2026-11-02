cask "cmux" do
  version "0.65.2.2"
  sha256 "8773e44616fa4e2f0b22f3e6efb9a262817682027dc67b44dc61a3bb23107825"

  url "https://github.com/manaflow-ai/cmux/releases/download/v#{version}/cmux-macos-arm64.dmg"
  name "cmux"
  desc "Lightweight native macOS terminal with vertical tabs for AI coding agents"
  homepage "https://cmux.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "cmux.app"
  binary "#{appdir}/cmux.app/Contents/Resources/bin/cmux"

  zap trash: [
    "~/Library/Application Support/cmux",
    "~/Library/Caches/cmux",
    "~/Library/Preferences/ai.manaflow.cmuxterm.plist",
  ]
end
