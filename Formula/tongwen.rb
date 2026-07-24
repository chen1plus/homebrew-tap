class Tongwen < Formula
  desc "An OpenAI-compatible local Chinese Converter endpoint."
  homepage "https://github.com/chen1plus/tongwen"
  license "MIT"

  head "https://github.com/chen1plus/tongwen.git", branch: "main"
  sha256 "78a49be4b81e5ebe9464b3e7536f9fd349e958cffef1d0cdd8f77dec047d2262"
  url "https://github.com/chen1plus/tongwen/archive/refs/tags/v0.2.2.tar.gz"

  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
  end

  service do
    keep_alive true
    run [opt_bin/"tongwen"]
  end
end
