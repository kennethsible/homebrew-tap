cask "jellyfin-rpc" do
  arch arm: "arm64", intel: "amd64"

  version "1.11.0"

  on_arm do
    sha256 "f7a23157641cdcf8edf8aff02505be7506e1aafdd57d473e20a9764a35be42a4"
    url "https://github.com/kennethsible/jellyfin-rpc/releases/download/v#{version}/jellyfin-rpc-#{version}-macos-arm64.zip"
  end
  on_intel do
    sha256 "e4be9cb13610fa34f016c19de617445b4c0edc81d1f0dd54ac74a516ed97e5dc"
    url "https://github.com/kennethsible/jellyfin-rpc/releases/download/v#{version}/jellyfin-rpc-#{version}-macos-amd64.zip"
  end

  name "Jellyfin RPC"
  desc "Discord Rich Presence (RPC) for Jellyfin"
  homepage "https://github.com/kennethsible/jellyfin-rpc"

  app "Jellyfin RPC.app"
end
