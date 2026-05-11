class Idea < Formula
  desc "Capture and manage ideas from the command line"
  homepage "https://github.com/sahil87/idea"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-darwin-arm64.tar.gz"
      sha256 "5f333fba4f1106a70ca9736adbe9fade84621490c39fc8e7f6c82f8048c6299a"
    end
    on_intel do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-darwin-amd64.tar.gz"
      sha256 "a33f011cd45a307e7181b9c60c6bcdc9c9315c27bf3423561ff2a5b243ef41f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-linux-arm64.tar.gz"
      sha256 "4096cabc4a9ada2025f01bff4b009c702f64c0e5f155ec188dcc97e33872c339"
    end
    on_intel do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-linux-amd64.tar.gz"
      sha256 "13c376a184871985f69b25d37b171eecc0906e9d8ca5e5410557108e12dfc2b5"
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
