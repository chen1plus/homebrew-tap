class Tytm < Formula
  desc "Typora theme manager."
  homepage "https://github.com/chen1plus/tytm"
  license "MIT"

  head "https://github.com/chen1plus/tytm.git", branch: "master"
  sha256 "4435049caee108156f577fe28d31b545775991f0bcbcac16d7d30c5bb3bb8653"
  url "https://github.com/chen1plus/tytm/archive/refs/tags/v0.4.0.tar.gz"

  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
  end
end
