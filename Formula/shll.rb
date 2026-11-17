class Shll < Formula
  desc "Meta-CLI for the HexoKit toolkit — update, shell-init, and version across all shll tools"
  homepage "https://github.com/sahil87/shll"
  version "0.1.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-arm64.tar.gz"
      sha256 "5b0d062901f8199b072372421fbafd4dbe12de71e52ee2d011c790f79a650745"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-amd64.tar.gz"
      sha256 "f605361ff5d035ef1ed051cef0a5e9ff13c8800e1270d9c67f67bc10ef739cc4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-arm64.tar.gz"
      sha256 "80cc993ea34e2dde6bb823a6cf3cd26844f8e36fc722780120a7e27f383ebc40"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-amd64.tar.gz"
      sha256 "fd39861d2635b6ee06e89cd0594d4677370e33f9e6b2337384cfdb0f50b6ce24"
    end
  end

  def install
    bin.install "shll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shll --version")
  end
end
