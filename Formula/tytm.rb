class Tytm < Formula
  desc "Typora theme manager"
  homepage "https://github.com/chen1plus/tytm"
  url "https://github.com/chen1plus/tytm/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "4435049caee108156f577fe28d31b545775991f0bcbcac16d7d30c5bb3bb8653"
  license "MIT"

  head "https://github.com/chen1plus/tytm.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "TyTM", shell_output("#{bin}/tytm --version")
  end
end
