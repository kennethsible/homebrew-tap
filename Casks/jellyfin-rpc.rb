cask "jellyfin-rpc" do
  arch arm: "arm64", intel: "amd64"

  version "1.14.1"
  sha256 arm:   "eed6d3e4968faad976e58af2d0a4ea1af4fe27d3144aba31349dcc3b5a6333f4",
         intel: "70d3d05f6cfc311d9b20ecf1b2a77fd8af95ab7c2608d419928df5a51ecfc787"

  url "https://github.com/kennethsible/jellyfin-rpc/releases/download/v#{version}/jellyfin-rpc-#{version}-macos-#{arch}.zip"
  name "Jellyfin RPC"
  desc "Discord Rich Presence (RPC) for Jellyfin"
  homepage "https://github.com/kennethsible/jellyfin-rpc"

  depends_on :macos

  app "Jellyfin RPC.app"

  zap trash: "~/Library/Application Support/Jellyfin RPC"
end
