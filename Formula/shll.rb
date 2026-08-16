class Shll < Formula
  desc "Meta-CLI for the shll toolkit — update, shell-init, and version across all shll tools"
  homepage "https://github.com/sahil87/shll"
  version "0.1.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-arm64.tar.gz"
      sha256 "4226aa2b03ca1a2dff15bc80560f2b73bd4fc96220bc67b27da5e878c80c919e"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-amd64.tar.gz"
      sha256 "b4b60f432b213dd24e1ef8ce130d5e29836de9ab72fe9c3e04e2f79fe3c9bbf2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-arm64.tar.gz"
      sha256 "971bee58c402f7240cd68ef5f8e89ced97305dbaafca112dd13d8619c6c48824"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-amd64.tar.gz"
      sha256 "31879f4d3a44e88d7a453571cabf5da2825c3516a7fa06d6b640b75aa2383f0a"
    end
  end

  def install
    bin.install "shll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shll --version")
  end
end
