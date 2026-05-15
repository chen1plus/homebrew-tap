class Tongwen < Formula
  desc "An OpenAI compatible Chinese converter"
  homepage "https://github.com/chen1plus/tongwen"
  license "MIT"

  depends_on "opencc"
  depends_on "rust" => :build

  head "https://github.com/chen1plus/tongwen.git", branch: "main"
  sha256 "a89a71e66a68ab7e16ec682b6e0a4507b38227ecba9c938673c2b4598c361cf3"
  url "https://github.com/chen1plus/tongwen/archive/refs/tags/v0.3.1.tar.gz"

  def install
    system "cargo", "install", *std_cargo_args
  end

  service do
    keep_alive true
    run [opt_bin/"tongwen"]
  end
end
