class Wt < Formula
  desc "Git worktree management CLI"
  homepage "https://github.com/sahil87/wt"
  version "0.0.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-arm64.tar.gz"
      sha256 "bc2e09d3e79ee27eede2a091872a36b0bd943844983beaab0413aea27d02d642"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-amd64.tar.gz"
      sha256 "cf9f3c36d2e43a327b2e7ba77d937119edfc61dd925a2086363cf033cdcd9327"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-arm64.tar.gz"
      sha256 "0363d5767aea46f5e31dce37fe0eafd150ca55e5dfff36d465fb940c32bb8cf0"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-amd64.tar.gz"
      sha256 "c45a1a8be8632323d38bb2295ee6c0ea9e3c0b6a90a03532c9f93d8abd8af41a"
    end
  end

  link_overwrite "bin/wt"

  def install
    bin.install "wt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt --version")
  end
end
