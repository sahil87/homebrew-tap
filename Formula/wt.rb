class Wt < Formula
  desc "Git worktree management CLI"
  homepage "https://github.com/sahil87/wt"
  version "0.0.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-arm64.tar.gz"
      sha256 "1f1a88a86a4d1aba65229276fd3225faa7dddae73d7ae1e91c26610456beb65a"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-amd64.tar.gz"
      sha256 "cd7428dbbebdc69117c8ec6d138b8aeb9c397ef3dd95fe696627d8359418c7a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-arm64.tar.gz"
      sha256 "00b8a1af0bae73d52cd7753a664c7c7b951f50fade2237a32a2f8ba4778f269a"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-amd64.tar.gz"
      sha256 "e9d929040791f775c07920d59ff4c983d89ec80f3cb5648e8ca454ffdd5faa6e"
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
