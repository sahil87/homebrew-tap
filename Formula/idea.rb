class Idea < Formula
  desc "Capture and manage ideas from the command line"
  homepage "https://github.com/sahil87/idea"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-darwin-arm64.tar.gz"
      sha256 "47984e16cd8f6886cbfe2cc2a79cf070c9841983b00602f586962c080f1ba466"
    end
    on_intel do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-darwin-amd64.tar.gz"
      sha256 "876069e71b8716234cbd6d453340c81e021bb5c2c417932c7d3301dc9059f849"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-linux-arm64.tar.gz"
      sha256 "114fa66b521b96a8b0c7fea040c3e5a61c8c0e7a7532e784c2003b94742b5011"
    end
    on_intel do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-linux-amd64.tar.gz"
      sha256 "6510690403ee62f3f0d2d18fd08b7e2710b1f8f8aef2cf79d1ea8bb571f0aa1e"
    end
  end

  link_overwrite "bin/idea"

  def install
    bin.install "idea"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/idea --version")
  end
end
