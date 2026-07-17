class Shll < Formula
  desc "Meta-CLI for the sahil87 toolkit — update, shell-init, and version across all sahil87 tools"
  homepage "https://github.com/sahil87/shll"
  version "0.0.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-arm64.tar.gz"
      sha256 "6dd7eaf7e5526ea9d2a0b16d8406ad3f25f17b17e6e61580b09b0d413e25baa3"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-amd64.tar.gz"
      sha256 "7fd8f808000cda6fa6fbd799f4e1facdc198b097fc3ce4c7eefbf846bf836340"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-arm64.tar.gz"
      sha256 "a6c2faaef9df29b5a34f95424786932a6a0af9473c26704924a30ea03591f37b"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-amd64.tar.gz"
      sha256 "e379644dbd0adf58e320b023c668fca7ac3dec2007da434fc06550f64febe76f"
    end
  end

  def install
    bin.install "shll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shll --version")
  end
end
