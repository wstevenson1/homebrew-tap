cask "freellmapi" do
  version "0.16.19"
  sha256 "448e8429aa0d93dfeaecdbb98deb52697a7da78cedd2bced7665c1f93f4f8e3c"

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
