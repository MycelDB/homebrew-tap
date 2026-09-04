cask "mycel-console" do
  version "0.9.0"
  arch arm: "aarch64", intel: "x86_64"

  # Replace :no_check with architecture-specific SHA-256 values after the first
  # tag-built DMGs are published by MycelDB/mycel-console.
  sha256 :no_check

  url "https://github.com/MycelDB/mycel-console/releases/download/v#{version}/mycel-console_#{version}_#{arch}.dmg",
      verified: "github.com/MycelDB/mycel-console/"
  name "Mycel Console"
  desc "Desktop console for MycelDB daemon and cluster operations"
  homepage "https://github.com/MycelDB/mycel-console"

  app "Mycel Console.app"
end
