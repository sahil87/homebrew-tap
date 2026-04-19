class FabKit < Formula
  desc "Specification-driven development toolkit — router, workspace manager, worktree manager, and backlog tool"
  homepage "https://github.com/sahil87/fab-kit"
  version "1.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-arm64.tar.gz"
      sha256 "835e8782e1c9a836f284dd1afb7f9e59bf0dad629d21fa7efa804741624ad062"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-amd64.tar.gz"
      sha256 "d787ef20fac7f0bfce67a724aa5877457379a0310e96119b366f8358c38c7268"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-arm64.tar.gz"
      sha256 "dcabdf25a7a8907a700fef6043271c3cbcf8f94b06db08bee1cec21fbf0e4ed6"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-amd64.tar.gz"
      sha256 "eb9ee916888e118535daa28a4f96d52926542528f11a116e9309b57ad1e4bd33"
    end
  end

  def install
    bin.install "fab"
    bin.install "fab-kit"
    bin.install "wt"
    bin.install "idea"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fab --version")
    assert_match version.to_s, shell_output("#{bin}/fab-kit --version")
    assert_match version.to_s, shell_output("#{bin}/wt --version")
    assert_match version.to_s, shell_output("#{bin}/idea --version")
  end
end
