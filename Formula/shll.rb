class Shll < Formula
  desc "Meta-CLI for the sahil87 toolkit — update, shell-init, and version across all sahil87 tools"
  homepage "https://github.com/sahil87/shll"
  version "0.0.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-arm64.tar.gz"
      sha256 "e9bf32648277ada720ff67d04c06b2bb780f9e99bda7f4d6dccb0f1f052a2815"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-amd64.tar.gz"
      sha256 "b908f9ba2ad61b735d50da9213bb38640f02d0830b69a42ba2674cfe65e661dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-arm64.tar.gz"
      sha256 "6a3ad9bf3fd41baa19161c0e8f611ba0c0ee79357eee14b39bfcc969ca37a579"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-amd64.tar.gz"
      sha256 "5a14f3c969c05d43fdd10b6c351b33e840b9c9a520511429cede3794b4b70619"
    end
  end

  def install
    bin.install "shll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shll --version")
  end
end
