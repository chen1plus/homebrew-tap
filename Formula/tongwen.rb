class Tongwen < Formula
  desc "An OpenAI-compatible local Chinese Converter endpoint."
  homepage "https://github.com/chen1plus/tongwen"
  license "MIT"

  head "https://github.com/chen1plus/tongwen.git", branch: "main"
  sha256 "5d0376c6f19bd6bf6785eaef1fa30200cb14c592ecaee14c4fcc14334b5e2907"
  url "https://github.com/chen1plus/tongwen/archive/refs/tags/v0.3.0.tar.gz"

  depends_on "rust" => :build
  depends_on "opencc"
  def install
    system "cargo", "install", *std_cargo_args
  end

  service do
    keep_alive true
    run [opt_bin/"tongwen"]
  end
end
