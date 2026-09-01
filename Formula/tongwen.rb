class Tongwen < Formula
  desc "An OpenAI compatible Chinese converter"
  homepage "https://github.com/chen1plus/tongwen"
  license "MIT"

  depends_on "opencc"
  depends_on "rust" => :build

  head "https://github.com/chen1plus/tongwen.git", branch: "main"
  sha256 "5d0376c6f19bd6bf6785eaef1fa30200cb14c592ecaee14c4fcc14334b5e2907"
  url "https://github.com/chen1plus/tongwen/archive/refs/tags/v0.3.0.tar.gz"

  def install
    system "cargo", "install", *std_cargo_args
  end

  service do
    keep_alive true
    run [opt_bin/"tongwen"]
  end
end
