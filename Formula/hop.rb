class Hop < Formula
  desc "Locate, open, list, and operate on repos from hop.yaml"
  homepage "https://github.com/sahil87/hop"
  version "0.2.0"
  license "MIT"

  depends_on "sahil87/tap/wt"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-arm64.tar.gz"
      sha256 "581dd1a9416f41a4f8949c93351c2d4a41ff8598856f6c2328adc5b819e29be7"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-amd64.tar.gz"
      sha256 "8ab0a97d139a4a244dc111c83030888a19d2c8b43abd5b6d509b5103a7885ccd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-arm64.tar.gz"
      sha256 "b973f8810a2cd462bb6d7e6f3f7d1ce486dc87bd0712c6432b28c2d974de4ca5"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-amd64.tar.gz"
      sha256 "746f217315fa8b1cbbaac40a6c32e685df690b6fb740b51959a519ed56e1bc75"
    end
  end

  def install
    bin.install "hop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hop --version")
  end
end
