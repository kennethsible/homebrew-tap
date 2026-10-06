cask "jellyfin-rpc" do
  arch arm: "arm64", intel: "amd64"

  version "1.12.0"

  on_arm do
    sha256 "51f0594535c170c468a906e3fc23af8d336734fbed0aa4f0be3ff0cb0ea83a09"
    url "https://github.com/kennethsible/jellyfin-rpc/releases/download/v#{version}/jellyfin-rpc-#{version}-macos-arm64.zip"
  end
  on_intel do
    sha256 "3f1a461da2a5ffa6a3f62582d6feb129b19d4f53728ea2ac5618179547683fb4"
    url "https://github.com/kennethsible/jellyfin-rpc/releases/download/v#{version}/jellyfin-rpc-#{version}-macos-amd64.zip"
  end

  name "Jellyfin RPC"
  desc "Discord Rich Presence (RPC) for Jellyfin"
  homepage "https://github.com/kennethsible/jellyfin-rpc"

  app "Jellyfin RPC.app"
end
