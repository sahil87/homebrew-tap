class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "e421b65e4b3c2188aa8111eb7533cc993c87840b8b05abf792fb438df1a30fe4"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "9bf21a2fe37c476210de8960e680bd554be42672e95c09eb2ef4ce45697f0df0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "41c0c4bf4515885810fb193cb5e22587e71357e2b5b4a6dc1fdd599e26ed4652"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "d532a53963169a4409cdb43388f23f94bae56d3d08b9ad860aeaa2faa0c35ae2"
    end
  end

  def install
    bin.install "rk"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk version")
  end
end
