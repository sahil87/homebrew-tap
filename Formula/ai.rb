class Ai < Formula
  desc "AI dev toolkit — fab-kit, rk, and tu installed together"
  homepage "https://github.com/sahil87/homebrew-tap"
  url "https://github.com/sahil87/homebrew-tap/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "44e4a16fe5f980288766d95ed36d7402881d2e3a2e652b6077a1df5abda3619d"
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
