cask "jellyfin-rpc" do
  arch arm: "arm64", intel: "amd64"

  version "1.14.0"
  sha256 arm:   "240d2994b88e765167c85e8f38da59afc799bd15f4f84672a1a0990520e25392",
         intel: "d3b3377922e0956ae0debdd48445f5af37ce19224462a6d61282d44acf458a54"

  url "https://github.com/kennethsible/jellyfin-rpc/releases/download/v#{version}/jellyfin-rpc-#{version}-macos-#{arch}.zip"
  name "Jellyfin RPC"
  desc "Discord Rich Presence (RPC) for Jellyfin"
  homepage "https://github.com/kennethsible/jellyfin-rpc"

  depends_on :macos

  app "Jellyfin RPC.app"

  zap trash: "~/Library/Application Support/Jellyfin RPC"
end
