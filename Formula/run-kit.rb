class RunKit < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "3.12.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "07626fbba2c277fc87d4f212d039d6033de8fd75fe564fd73efae9fa509d2086"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "48fc743c1af18ecbfca689b23c68b500c233bb1c4aacde4b54991d225653080b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "7d7d9e3b69fd6c7deba3be57cb68d18b4d04540a8415a8bda8af52b0144fceb4"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "cbe71e98acd9f55dfbd10b5d93ddb0b5110c9c05f571a4dda85514686cdcf8de"
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
