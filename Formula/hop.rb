class Hop < Formula
  desc "Locate, open, list, and operate on repos from hop.yaml"
  homepage "https://github.com/sahil87/hop"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-arm64.tar.gz"
      sha256 "2e2b9bfe8187ea722d239d2580387b5d0823a8ea9357fc392017392682dead18"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-amd64.tar.gz"
      sha256 "85f2f0141c059da176292d6acde2d17415a1ebf86eed1f55975e83a112462842"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-arm64.tar.gz"
      sha256 "17e3c3921ba52396fb0015554eab49355c833f4fad84e77a65c9a1184b46f55c"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-amd64.tar.gz"
      sha256 "705b85b902d49fd6a518c0bad767c1fdab8756e20195d274146082e6981b4474"
    end
  end

  def install
    bin.install "hop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hop --version")
  end
end
