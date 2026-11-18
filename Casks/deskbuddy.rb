cask "deskbuddy" do
  arch arm: "-arm64"

  version "1.3.0"
  sha256 arm:   "bfabc863251f69707524a52950fb985765e7ded2b0bd2d30a920216914fd306a",
         intel: "cf7b47e57ba33ec47e993c8d2bff8106b93b0d1cd950a185b4d5b04d147b2f32"

  url "https://github.com/JAFFERSHA/deskbuddy/releases/download/v#{version}/DeskBuddy-#{version}#{arch}.dmg"
  name "DeskBuddy"
  desc "Animated buddy that reminds you to drink water, take breaks and catch meetings"
  homepage "https://jaffersha.github.io/deskbuddy/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "DeskBuddy.app"

  caveats <<~EOS
    DeskBuddy is not notarized by Apple yet. If macOS says it cannot be opened, run:
      xattr -dr com.apple.quarantine /Applications/DeskBuddy.app
    or allow it in System Settings > Privacy & Security > Open Anyway.
  EOS
end
