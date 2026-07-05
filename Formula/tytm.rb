class Tytm < Formula
  desc "Typora theme manager."
  homepage "https://github.com/chen1plus/tytm"
  license "MIT"

  head "https://github.com/chen1plus/tytm.git", branch: "master"
  sha256 "0a54122eeb52b6ce30ced7c61118314d56e629d7ea312b2de1029cf30e510fbd"
  url "https://github.com/chen1plus/tytm/archive/refs/tags/v0.5.2.tar.gz"

  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
  end
end
