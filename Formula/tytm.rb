class Tytm < Formula
  desc "Typora theme manager"
  homepage "https://github.com/chen1plus/tytm"
  license "MIT"

  url "https://github.com/chen1plus/tytm/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "e55a104eb5a551e0bc3432cfa6052c5100326512d537d78aef48b096a5c95260"
  version "0.3.1"

  head "https://github.com/chen1plus/tytm.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "TyTM", shell_output("#{bin}/tytm --version")
  end
end
