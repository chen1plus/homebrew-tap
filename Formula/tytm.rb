class Tytm < Formula
  desc "Typora theme manager."
  homepage "https://github.com/chen1plus/tytm"
  license "MIT"

  head "https://github.com/chen1plus/tytm.git", branch: "master"
  sha256 "d4e120b4372c75bf33a5df5be4e733f05c2938da71c881f8f9cc46df6390a78d"
  url "https://github.com/chen1plus/tytm/archive/refs/tags/v0.4.1.tar.gz"

  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
  end
end
