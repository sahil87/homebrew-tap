class All < Formula
  desc "Sahil's full open-source toolkit — installs every CLI in this tap"
  homepage "https://ai.shll.in"
  url "https://github.com/sahil87/homebrew-tap/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "44e4a16fe5f980288766d95ed36d7402881d2e3a2e652b6077a1df5abda3619d"
  version "0.1.0"
  license "MIT"

  depends_on "sahil87/tap/fab-kit"
  depends_on "sahil87/tap/rk"
  depends_on "sahil87/tap/tu"
  depends_on "sahil87/tap/hop"
  depends_on "sahil87/tap/wt"
  depends_on "sahil87/tap/idea"

  def install
    (pkgshare/"README.md").write <<~EOS
      all is a meta-package that installs every CLI in sahil87/homebrew-tap:
        - fab-kit  spec-driven development toolkit
        - rk       tmux session manager with web UI
        - tu       AI coding assistant cost tracker
        - hop      quick repo navigation and operations
        - wt       git worktree management CLI
        - idea     idea capture CLI
    EOS
  end

  test do
    system "true"
  end
end
