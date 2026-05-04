class Hop < Formula
  desc "Locate, open, list, and operate on repos from hop.yaml"
  homepage "https://github.com/sahil87/hop"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-arm64.tar.gz"
      sha256 "2cb8dedf4b6648258b35e8e63c58734ff631cbee972773e60006ea85c0eaf558"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-amd64.tar.gz"
      sha256 "3ea131a0c68885c2777e3d2674c7a818c4915ec9c175fccf27e0c6fcc72e37ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-arm64.tar.gz"
      sha256 "af4aa333aaac61001f5e5d54b07e8842be6a1c0ed338b2e664b37708203f893d"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-amd64.tar.gz"
      sha256 "4345ff81b44202dbb12b7b41df775c7c90e0ed69d60248012e724ab0702e4314"
    end
  end

  def install
    bin.install "hop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hop --version")
  end
end
