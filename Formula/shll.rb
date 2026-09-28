class Shll < Formula
  desc "Meta-CLI for the HexoKit toolkit — update, shell-init, and version across all shll tools"
  homepage "https://github.com/sahil87/shll"
  version "0.1.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-arm64.tar.gz"
      sha256 "6451cbf5bdef9c9844afb34475a9a0e2abbc4fcc17ac91e0de840a11b7c64e49"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-amd64.tar.gz"
      sha256 "f36e7b18cfca9fb38b6e00b2f6cbb455c8aa72e3849025f4d17df5e5bb0f79fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-arm64.tar.gz"
      sha256 "f363d30a8c033c05f4e550eda359868f5af33226241eca956a9de487c4cf0f47"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-amd64.tar.gz"
      sha256 "ffe08258af0e404a8003e69e22d4918136ce89a9dc6d0e74b72d67c616024198"
    end
  end

  def install
    bin.install "shll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shll --version")
  end
end
