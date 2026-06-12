class Idea < Formula
  desc "Capture and manage ideas from the command line"
  homepage "https://github.com/sahil87/idea"
  version "0.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-darwin-arm64.tar.gz"
      sha256 "fbf9984cdf154c4fe5ed1e4ee0c2fa878ca350fcfd4aff19443fdd31908e5025"
    end
    on_intel do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-darwin-amd64.tar.gz"
      sha256 "de4fe7d4a6a16332489429705d0c27f9ef2f500a6fac5a0bc5e0ddadf0a550b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-linux-arm64.tar.gz"
      sha256 "b635291014740db4f44ed45e33e052bd07dc568bd91225fce5d3a1fe803490ca"
    end
    on_intel do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-linux-amd64.tar.gz"
      sha256 "c656e15531497ef07d47e873d8964b5d4458d5ca3653be68b48af85ab2a8dd9c"
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
