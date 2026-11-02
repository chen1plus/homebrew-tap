cask "typora-lapis" do
  name "Typora Theme — Lapis"
  version "1.2.1"

  homepage "https://github.com/YiNNx/typora-theme-lapis"
  url "https://github.com/YiNNx/typora-theme-lapis/releases/download/v#{version}/typora-theme-lapis-v#{version}.zip"
  sha256 "8a618903b4c940844c8abab7f8a2ee72aaca4ccb4dd35f467f7f173b4f1856d6"

  depends_on :macos
  artifact "lapis", target: "~/Library/Application Support/abnerworks.Typora/themes/lapis"
  artifact "lapis.css", target: "~/Library/Application Support/abnerworks.Typora/themes/lapis.css"
  artifact "lapis-dark.css", target: "~/Library/Application Support/abnerworks.Typora/themes/lapis-dark.css"
end
