class Quill < Formula
  desc "A lightweight, OpenAI-compatible speech-to-text HTTP server."
  homepage "https://github.com/chen1plus/quill"
  license "MIT"

  head "https://github.com/chen1plus/quill.git", branch: "main"
  sha256 "c35546d5cf0b687ab5f15f7d23be3e4ea6e1628630fe2008225711bd837a501b"
  url "https://github.com/chen1plus/quill/archive/refs/tags/v0.1.0.tar.gz"

  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
  end

  service do
    keep_alive true
    run [opt_bin/"quill"]
  end
end
