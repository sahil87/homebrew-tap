class Shll < Formula
  desc "Meta-CLI for the HexoKit toolkit — update, shell-init, and version across all shll tools"
  homepage "https://github.com/sahil87/shll"
  version "0.1.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-arm64.tar.gz"
      sha256 "03d74d70ab79b5dfae2131a91425bebf526241758e8e3577aea97ea515be0757"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-amd64.tar.gz"
      sha256 "17c0f30bff41b8e4ce15a22f4a7f6461b47a0e09e988e12c731f0788fa26e4de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-arm64.tar.gz"
      sha256 "e4917ee561b753d0d6db471817cc75eb5c87ed0e8416b80c1e6329529d07108c"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-amd64.tar.gz"
      sha256 "90f42cfeab9a8b7733106b827426b6625184f2cd266a053ccf21155be258caa2"
    end
  end

  def install
    bin.install "shll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shll --version")
  end
end
