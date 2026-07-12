class Tytm < Formula
  desc "Typora theme manager."
  homepage "https://github.com/chen1plus/tytm"
  license "MIT"

  head "https://github.com/chen1plus/tytm.git", branch: "master"
  sha256 "cd21f8ebbf73d1fed22214cc9de4c74b62331126cb1439c40b5e42f4bac500f5"
  url "https://github.com/chen1plus/tytm/archive/refs/tags/v0.5.3.tar.gz"

  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
  end
end
