class Hop < Formula
  desc "Locate, open, list, and operate on repos from hop.yaml"
  homepage "https://github.com/sahil87/hop"
  version "0.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-arm64.tar.gz"
      sha256 "e17c95061c86b9d77412bf57316e0f1bd8324c25b049636a0e9425d5dde9b304"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-amd64.tar.gz"
      sha256 "da1f7e61e5670bbfe97977bce2faf6e8de9222b6762c0571329c6cd66242c1d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-arm64.tar.gz"
      sha256 "21e3c0b6739a2c3155fa1db3b6334371678b6ece1e7325ededd31495fa5b9315"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-amd64.tar.gz"
      sha256 "b02f8d78347b42eca3fc9d9cdf4dd31b650cf86761b2e3dd323c228537b6ca63"
    end
  end

  def install
    bin.install "hop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hop --version")
  end
end
