cask "jellyfin-rpc" do
  arch arm: "arm64", intel: "amd64"
  version "1.13.0"

  on_arm do
    sha256 "d42ca9f4df0894268c3865c1e5be25256bd99bf7e09b0400c28ce4843f626df3"
  end
  on_intel do
    sha256 "555b8f1c5ab0deb16d3d43c055532f6f13eae73f9ea33918a2d71d88f62420a7"
  end

  url "https://github.com/kennethsible/jellyfin-rpc/releases/download/v#{version}/jellyfin-rpc-#{version}-macos-#{arch}.zip"
  name "Jellyfin RPC"
  desc "Discord Rich Presence (RPC) for Jellyfin"
  homepage "https://github.com/kennethsible/jellyfin-rpc"

  app "Jellyfin RPC.app"
  zap trash: "~/Library/Application Support/Jellyfin RPC"
end
