class RunKit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "3.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "74eb31c61fb938b488c14037ccac4552913de85a69502c0540a2fc9ad4530897"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "0ac5a90ed6746483c48757cfe1182ac51c336d1ec37a95faad06b9687d3dfba1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "1ae0ee2e74ee9bf0bceb41d6eb4725bcf0380cc4f57b7c14cefe7dd7da57e6c9"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "c94ef426bc27fbdafbf017f6dcb27151a2bdeeab262d1c52b968bd86f9ecfba1"
    end
  end

  def install
    bin.install "rk" => "run-kit"
    bin.install_symlink bin/"run-kit" => "rk"
  end

  test do
    assert_match "run-kit version", shell_output("#{bin}/run-kit --version")
    assert_match "run-kit version", shell_output("#{bin}/rk --version")
  end
end
