cask "freellmapi" do
  version "0.16.20"
  sha256 "b97b3763abd10564466c960503ea098b356b392cf062b343d059ee11d2c87dcb"

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
