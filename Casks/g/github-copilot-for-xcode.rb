cask "github-copilot-for-xcode" do
  version "0.32.0"
  sha256 "4283512214ddc2cdfb8eb8f41eb813645ca3cbfa748efdedcb2a070a0dad842e"

  url "https://github.com/github/CopilotForXcode/releases/download/#{version}/GitHubCopilotForXcode.dmg"
  name "GitHub Copilot for Xcode"
  desc "Xcode extension for GitHub Copilot"
  homepage "https://github.com/github/CopilotForXcode"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "GitHub Copilot for Xcode.app"

  zap trash: [
    "~/Library/Application Scripts/com.github.CopilotForXcode.EditorExtension",
    "~/Library/Application Scripts/VEKTX9H2N7.group.com.github.CopilotForXcode",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.copilotforxcode.extensionservice.sfl*",
    "~/Library/Application Support/com.github.CopilotForXcode",
    "~/Library/Containers/com.github.CopilotForXcode.EditorExtension",
    "~/Library/Group Containers/VEKTX9H2N7.group.com.github.CopilotForXcode",
    "~/Library/HTTPStorages/com.github.CopilotForXcode",
    "~/Library/Logs/GitHubCopilot",
    "~/Library/Preferences/com.github.CopilotForXcode.plist",
    "~/Library/Preferences/VEKTX9H2N7.group.com.github.CopilotForXcode.prefs.plist",
  ]
end
