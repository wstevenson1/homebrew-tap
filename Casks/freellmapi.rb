cask "freellmapi" do
  version "0.16.24"
  sha256 "707f80128c30bc1806a4015dcfc8dd0c985dc8a3e4138ff944a91c17c74ecf1e"

  url "https://github.com/tashfeenahmed/freellmapi/releases/download/v#{version}/FreeLLMAPI-#{version}-arm64.dmg"
  name "FreeLLMAPI"
  desc "Free access to LLM APIs via a local proxy"
  homepage "https://github.com/tashfeenahmed/freellmapi"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "FreeLLMAPI.app"

  zap trash: [
    "~/Library/Application Support/freellmapi-desktop-updater",
    "~/Library/Application Support/FreeLLMAPI",
    "~/Library/Caches/com.tashfeenahmed.freellmapi",
    "~/Library/Logs/FreeLLMAPI",
  ]
end
