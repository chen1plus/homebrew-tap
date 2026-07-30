class Tongwen < Formula
  desc "An OpenAI-compatible local Chinese Converter endpoint."
  homepage "https://github.com/chen1plus/tongwen"
  license "MIT"

  head "https://github.com/chen1plus/tongwen.git", branch: "main"
  sha256 "a9ded3569e63332646d2796c252fda4dda140cb9ff3f81f7d0a3e7245305957f"
  url "https://github.com/chen1plus/tongwen/archive/refs/tags/v0.2.3.tar.gz"

  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
  end

  service do
    keep_alive true
    run [opt_bin/"tongwen"]
  end
end
