class Idea < Formula
  desc "Capture and manage ideas from the command line"
  homepage "https://github.com/sahil87/idea"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-darwin-arm64.tar.gz"
      sha256 "573ae910f590d7e588aa8cef6406d191e1aa302d8760f5e95facbeafcd07f9c4"
    end
    on_intel do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-darwin-amd64.tar.gz"
      sha256 "3ef34e6aee8f4d022dd1d1b4c7e038e9ea4e28fb657f75e34006c0a679825b59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-linux-arm64.tar.gz"
      sha256 "e2c7da065b4dbcac8e8257d9aa942f9e35f64efba85be961649b0ec26c95141c"
    end
    on_intel do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-linux-amd64.tar.gz"
      sha256 "1de827aecd45b172fa28cabc2a19fa8beffa64b0551be7d1e1b02e5396db7cab"
    end
  end

  link_overwrite "bin/idea"

  def install
    bin.install "idea"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/idea --version")
  end
end
