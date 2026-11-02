cask "typora-paradox" do
  name "Typora Theme — Paradox"
  version "1.2"

  homepage "https://github.com/george-paul/typoratheme-paradox"
  url "https://github.com/george-paul/typoratheme-paradox/releases/download/v#{version}/release1-2.zip"
  sha256 "96919a402703876ae552f647ceb9e05f7dd98751a9ec3fe52c11170a0df92f7e"

  depends_on :macos
  artifact "paradox", target: "~/Library/Application Support/abnerworks.Typora/themes/paradox"
  artifact "paradox-seraph.css", target: "~/Library/Application Support/abnerworks.Typora/themes/paradox-seraph.css"
  artifact "paradox-phantom.css", target: "~/Library/Application Support/abnerworks.Typora/themes/paradox-phantom.css"
end
