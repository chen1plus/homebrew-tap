class Tongwen < Formula
  desc "An OpenAI-compatible local Chinese Converter endpoint."
  homepage "https://github.com/chen1plus/tongwen"
  license "MIT"

  head "https://github.com/chen1plus/tongwen.git", branch: "main"
  sha256 "7df66240ff51f4e16b93f66ae0df8b143cb1d11572ab27ec3cd54a6a73907f84"
  url "https://github.com/chen1plus/tongwen/archive/refs/tags/v0.2.1.tar.gz"

  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
  end

  service do
    keep_alive true
    run [opt_bin/"tongwen"]
  end
end
