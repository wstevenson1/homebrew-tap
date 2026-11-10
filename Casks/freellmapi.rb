cask "freellmapi" do
  version "0.16.23"
  sha256 "a7a00740f5caa28e40e84df97ecc1d9598e8b08d75dc09bd8920dd2e246774ae"

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
