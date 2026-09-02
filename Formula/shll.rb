class Shll < Formula
  desc "Meta-CLI for the shll toolkit — update, shell-init, and version across all shll tools"
  homepage "https://github.com/sahil87/shll"
  version "0.1.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-arm64.tar.gz"
      sha256 "9d48808f0eda82a68adc66c7c4ffea4ab41cd549a27ef15d9f4e4a9a9e32420f"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-amd64.tar.gz"
      sha256 "ad1cb5b3367debfa37e3f362e096a3c1971b4cdffad84c6e88c2dc42cc683792"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-arm64.tar.gz"
      sha256 "1bbcb09a0310549a4d44127d8fd97b7f341a4eb0ed1de5af47fef097ba8b9a07"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-amd64.tar.gz"
      sha256 "d9aab6d42aa8181b892bebb0ce48839ab79119cbb62a17387c5db14ba4488e24"
    end
  end

  def install
    bin.install "shll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shll --version")
  end
end
