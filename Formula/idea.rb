class Idea < Formula
  desc "Capture and manage ideas from the command line"
  homepage "https://github.com/sahil87/idea"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-darwin-arm64.tar.gz"
      sha256 "d5a164967038294948902f7d54e05a5ad63a4717929b97b643120a9d71d22a7e"
    end
    on_intel do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-darwin-amd64.tar.gz"
      sha256 "dee59c4212e6a535a2882af886bc43472909717d2fc8c9fc4aa99540705e75f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-linux-arm64.tar.gz"
      sha256 "281a9f6484efd63a8848d9ffae5022645b8d2469ffb840a28db7890aef51fbe3"
    end
    on_intel do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-linux-amd64.tar.gz"
      sha256 "d5c11ed7612cfe1b0361617f61196e5f041d122120e1ee9e6cc6334ead54132e"
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
