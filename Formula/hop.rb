class Hop < Formula
  desc "Locate, open, list, and operate on repos from hop.yaml"
  homepage "https://github.com/sahil87/hop"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-arm64.tar.gz"
      sha256 "825ee612a100dc1ace5ae4b7deda65e5b172b2fcfe91be21b05f10f6b4ed3483"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-amd64.tar.gz"
      sha256 "4b9c28a1c64c8d4e2018199daa27e746fbc8e8e2a7940f0e8ae320c697e26bfa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-arm64.tar.gz"
      sha256 "e979502ba50912b789afe96afd72a5e9b0ea7751b526100195620f8ffc4b6e2a"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-amd64.tar.gz"
      sha256 "3a89528799b86a8fb78090f30212f8aa6de5938c9f591b81f87aa0b8a2184b1d"
    end
  end

  def install
    bin.install "hop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hop --version")
  end
end
