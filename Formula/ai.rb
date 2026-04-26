class Ai < Formula
  desc "AI dev toolkit — fab-kit, rk, and tu installed together"
  homepage "https://github.com/sahil87/homebrew-tap"
  url "https://github.com/sahil87/homebrew-tap/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "REPLACE_WITH_SHA256_AFTER_TAGGING"
  version "0.1.0"
  license "MIT"

  depends_on "sahil87/tap/fab-kit"
  depends_on "sahil87/tap/rk"
  depends_on "sahil87/tap/tu"

  def install
    (pkgshare/"README.md").write <<~EOS
      ai is a meta-package that installs:
        - fab-kit  spec-driven development toolkit
        - rk       tmux session manager with web UI
        - tu       AI coding assistant cost tracker
    EOS
  end

  test do
    system "true"
  end
end
