cask "freellmapi" do
  version "0.16.17"
  sha256 "6c8c91de408f3671454a29326708dd108c8d18b28f835458403f3ae85e615de0"

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
