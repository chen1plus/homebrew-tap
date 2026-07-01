class Tytm < Formula
  desc "Typora theme manager."
  homepage "https://github.com/chen1plus/tytm"
  license "MIT"

  head "https://github.com/chen1plus/tytm.git", branch: "master"
  sha256 "386722019a7d80a045bc96e061f651fbfcbe5e6df78819f31ad9481b9782eae2"
  url "https://github.com/chen1plus/tytm/archive/refs/tags/v0.5.1.tar.gz"

  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
  end
end
