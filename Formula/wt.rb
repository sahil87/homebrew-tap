class Wt < Formula
  desc "Git worktree management CLI"
  homepage "https://github.com/sahil87/wt"
  version "0.0.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-arm64.tar.gz"
      sha256 "a9523d22ce86bbdc4a022c64ee5d3b2de100c82d533e951f91d1af7d28f45434"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-amd64.tar.gz"
      sha256 "7cf15e24ba451497575357d2cc9427283226758aa97ef2c384502b422e557c83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-arm64.tar.gz"
      sha256 "4eda0ea05cf876d46d18ce70e6645d799e1be3e45861cab48581015d09e9aba9"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-amd64.tar.gz"
      sha256 "c98eb1d57788b9926b70679fc9fa25442cdb84353e102655f129840737d910fd"
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
