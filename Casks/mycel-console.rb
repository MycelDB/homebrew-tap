cask "mycel-console" do
  version "0.20.0"
  arch arm: "aarch64", intel: "x86_64"

  sha256 arm:   "f5e1ba104678181243389f18f1a1ecc13c19befbeebb232f8bdefef55e386bf9",
         intel: "f652104640b71244a2af523921fa3eeea988268fbabb92a06ed1682e7783c3af"

  url "https://github.com/MycelDB/mycel-console/releases/download/v#{version}/mycel-console_#{version}_#{arch}.dmg"
  name "Mycel Console"
  desc "Desktop console for MycelDB daemon and cluster operations"
  homepage "https://github.com/MycelDB/mycel-console"

  app "Mycel Console.app"
end
