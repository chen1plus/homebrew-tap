class Tongwen < Formula
  desc "An OpenAI-compatible local Chinese Converter endpoint."
  homepage "https://github.com/chen1plus/tongwen"
  license "MIT"

  head "https://github.com/chen1plus/tongwen.git", branch: "main"
  sha256 "03cfd355f4661851f57a00a592f1c9ae0e487942540981de2536fcdaa6386d59"
  url "https://github.com/chen1plus/tongwen/archive/refs/tags/v0.2.0.tar.gz"

  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
  end

  service do
    keep_alive true
    run [opt_bin/"tongwen"]
  end
end
