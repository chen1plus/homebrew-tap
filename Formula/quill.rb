class Quill < Formula
  desc "OpenAI-compatible local Simplified→Traditional Chinese (s2tw) endpoint"
  homepage "https://github.com/chen1plus/quill"
  license "MIT"

  # Update url + sha256 when cutting a tagged release.
  url "https://github.com/chen1plus/quill/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c35546d5cf0b687ab5f15f7d23be3e4ea6e1628630fe2008225711bd837a501b"

  head "https://github.com/chen1plus/quill.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  service do
    run [opt_bin/"quill"]
    keep_alive true
    log_path var/"log/quill.log"
    error_log_path var/"log/quill.err.log"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quill --version")
  end
end
