class Hop < Formula
  desc "Locate, open, list, and operate on repos from hop.yaml"
  homepage "https://github.com/sahil87/hop"
  version "0.1.16"
  license "MIT"

  depends_on "sahil87/tap/wt"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-arm64.tar.gz"
      sha256 "87643153b5b2bcc0e1169622d58f78ea7bfd6d7e95ac1f3caa649e0de14bc2a9"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-darwin-amd64.tar.gz"
      sha256 "242d7ab1a53edea5815fade7cc429ebc625a15ee344cf29e2a5398dc941f0a6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-arm64.tar.gz"
      sha256 "fc2381c4addd8a95bf56d708f8aa4e799b6a1717abb0c832cbef45b33842eeb0"
    end
    on_intel do
      url "https://github.com/sahil87/hop/releases/download/v#{version}/hop-linux-amd64.tar.gz"
      sha256 "5bba1b8fb6fe34ccd981700ee76d2955e2de65eaadab2ca33c9a3bf5f27a39cf"
    end
  end

  def install
    bin.install "hop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hop --version")
  end
end
