class Wt < Formula
  desc "Git worktree management CLI"
  homepage "https://github.com/sahil87/wt"
  version "0.0.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-arm64.tar.gz"
      sha256 "ddf74972c06b2a64f07a02ab492d682e7e3c044566bfd1f55b05ecf2145847c9"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-amd64.tar.gz"
      sha256 "010781f74f651f2f92214db72c2a81b4da284791b9ea82f660b0f0ea92ad0d39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-arm64.tar.gz"
      sha256 "56ad1c8f8ecc2cbecece9f7ba356627703ff06ac778722f82f78dcdb3e0e531d"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-amd64.tar.gz"
      sha256 "b527982cf082c4ae51ed800240326ce1e9cb0df95d00d531729ce154f856b495"
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
