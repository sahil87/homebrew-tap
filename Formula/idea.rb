class Idea < Formula
  desc "Capture and manage ideas from the command line"
  homepage "https://github.com/sahil87/idea"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-darwin-arm64.tar.gz"
      sha256 "1eb419b450e8adaea5a77358a5fd5e2aae398e97ca9cb01e4ebe8a28d1c6dc9c"
    end
    on_intel do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-darwin-amd64.tar.gz"
      sha256 "a030bd0786a62feaf8367100ec3e2ad2f374124182b8b0e99315ab7723db003f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-linux-arm64.tar.gz"
      sha256 "30a2d73aa44b1f186924e917d2d047ad6d73a1030effb8f9d23260d6fdb30ef3"
    end
    on_intel do
      url "https://github.com/sahil87/idea/releases/download/v#{version}/idea-linux-amd64.tar.gz"
      sha256 "1f9ddf52242315291522ca1838f2c5360368b60ae3e848de583f9d981a97a76f"
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
