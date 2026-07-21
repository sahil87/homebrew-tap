class Hop < Formula
  desc "Locate, open, list, and operate on repos from hop.yaml"
  homepage "https://github.com/sahil87/hop"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-arm64.tar.gz"
      sha256 "9750ce72a5e24d541e261122c970b763115231d44e9279935e46084bbbe8f080"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-amd64.tar.gz"
      sha256 "97ac92b9393fa7560c96db56cacb7e6633eafaec22ef87104a88747a45b5e5a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-arm64.tar.gz"
      sha256 "c9163c0bfd9c5033cae0271b0ad4e4e34b8db1965d5357781e7f688dd0f589e1"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-amd64.tar.gz"
      sha256 "446fa016343ab1b8ea152bc53d43839adba6aba8277c0ddf4d2e789379183556"
    end
  end

  def install
    bin.install "hop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hop --version")
  end
end
