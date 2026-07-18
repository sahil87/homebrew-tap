class Wt < Formula
  desc "Git worktree management CLI"
  homepage "https://github.com/sahil87/wt"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-arm64.tar.gz"
      sha256 "53f8a0627ca13cdd9fd3ee8ee138c2feaa80340c1a303ed8ae476ba50a71d5a2"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-amd64.tar.gz"
      sha256 "238fefe1e6d01e9b360ec9cd0cad6ac900397df4849dad93cd76ee84460db616"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-arm64.tar.gz"
      sha256 "53ad51a6d94462320b4b7df1472dda9dc8c12e2bb562fc19362215a851be6fe6"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-amd64.tar.gz"
      sha256 "7865c2cec0f7383b6442ed09ec646f5949e3dfd55dee2b6b7f852b2beaf8d2ab"
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
