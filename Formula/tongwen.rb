class Tongwen < Formula
  desc "OpenAI-compatible local Simplified→Traditional Chinese (s2tw) endpoint"
  homepage "https://github.com/chen1plus/tongwen"
  license "MIT"

  # Update url + sha256 when cutting a tagged release.
  url "https://github.com/chen1plus/tongwen/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "03cfd355f4661851f57a00a592f1c9ae0e487942540981de2536fcdaa6386d59"

  head "https://github.com/chen1plus/tongwen.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  service do
    run [opt_bin/"tongwen"]
    keep_alive true
    log_path var/"log/tongwen.log"
    error_log_path var/"log/tongwen.err.log"
    environment_variables TONGWEN_PORT: "1180", TONGWEN_HOST: "127.0.0.1"
  end

  test do
    require "json"
    require "net/http"
    require "timeout"

    port = free_port
    ENV["TONGWEN_PORT"] = port.to_s
    ENV["TONGWEN_HOST"] = "127.0.0.1"

    pid = spawn(bin/"tongwen")
    begin
      Timeout.timeout(10) do
        loop do
          begin
            TCPSocket.new("127.0.0.1", port).close
            break
          rescue Errno::ECONNREFUSED
            sleep 0.1
          end
        end
      end

      uri = URI("http://127.0.0.1:#{port}/v1/chat/completions")
      req = Net::HTTP::Post.new(uri, "Content-Type" => "application/json")
      req.body = { messages: [{ role: "user", content: "汉字" }] }.to_json
      res = Net::HTTP.start(uri.hostname, uri.port) { |h| h.request(req) }
      assert_match "漢字", JSON.parse(res.body).dig("choices", 0, "message", "content")
    ensure
      Process.kill("TERM", pid)
      Process.wait(pid)
    end
  end
end
