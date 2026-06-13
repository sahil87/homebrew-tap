class Idea < Formula
  desc "Capture and manage ideas from the command line"
  homepage "https://github.com/sahil87/idea"
  version "0.0.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-darwin-arm64.tar.gz"
      sha256 "41f1b5eaaf30317a9eac0838004a6bda1b2eae5ca4b115d6fcb277d436f25d9d"
    end
    on_intel do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-darwin-amd64.tar.gz"
      sha256 "b82e9bed14ad6b1e80004ec0f96540b2d1567ae2988845baa68d36c5a12bfb4b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-linux-arm64.tar.gz"
      sha256 "6164fb2e555e0c3e69aa5cfe4306ac960d9c6e4a165eedfd407650fe8a3e4f8b"
    end
    on_intel do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-linux-amd64.tar.gz"
      sha256 "7e2003a7746392f761c60cb206b153735bba2aa079b9f92ce954306f4666c23a"
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
