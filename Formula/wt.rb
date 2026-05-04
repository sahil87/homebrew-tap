class Wt < Formula
  desc "Git worktree management CLI"
  homepage "https://github.com/sahil87/wt"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-arm64.tar.gz"
      sha256 "738e1103f5dc20a1143342b294fa145542f38b8ab61a282b24db607d9566de11"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-amd64.tar.gz"
      sha256 "fa4f73f72f0a7665a18ae3221e3ff7e35c33d6038178e4a9dd42f48c9c042df4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-arm64.tar.gz"
      sha256 "50086a7ec4e70b144999f86ab995a26f3850450a9c8181501e053c0be216c229"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-amd64.tar.gz"
      sha256 "14255ce13ff77e9ca44e1bf098db54c4ecf46761d01b158d9ac72948ac041cd8"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt --version")
  end
end
