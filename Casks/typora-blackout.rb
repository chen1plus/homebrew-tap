cask "typora-blackout" do
  name "Typora Theme — Blackout"
  version "1.0.9"

  homepage "https://github.com/obscurefreeman/typora_theme_blackout"
  url "https://github.com/obscurefreeman/typora_theme_blackout/releases/download/V#{version}/blackout_theme.zip"
  sha256 "0eeb2a1b5a672632b019fb12677491aae720ecd07b4dc787f466e64f7222ee48"

  depends_on :macos
  artifact "blackout.css", target: "~/Library/Application Support/abnerworks.Typora/themes/blackout.css"
  artifact "obscurefreeman", target: "~/Library/Application Support/abnerworks.Typora/themes/obscurefreeman"
end
