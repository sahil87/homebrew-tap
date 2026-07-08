class Rk < Formula
  desc "Tmux session manager with web UI"
  homepage "https://github.com/sahil87/run-kit"
  version "2.5.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-arm64.tar.gz"
      sha256 "667c1868b284886ce56265c368edd7aad8d0b3750b2e56702129c26a866ac511"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-darwin-amd64.tar.gz"
      sha256 "d921ffb148989d7d052148dd1f7fb5050df97651e9a7037141e47df82edfda9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-arm64.tar.gz"
      sha256 "6a20e4236578e1d483c01a6a7df31f9b9dec456e85f8ee823a6b2b282b33ae53"
    end
    on_intel do
      url "https://github.com/sahil87/run-kit/releases/download/v#{version}/rk-linux-amd64.tar.gz"
      sha256 "f92ea9d8d0382caeac6285797b6b53982dcdc4e59a036e780f74ee569e8cb6c7"
    end
  end

  def install
    bin.install "rk"
    bin.install_symlink bin/"rk" => "run-kit"
  end

  test do
    assert_match "rk version", shell_output("#{bin}/rk --version")
    assert_match "rk version", shell_output("#{bin}/run-kit --version")
  end
end
