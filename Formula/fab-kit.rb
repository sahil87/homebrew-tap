class FabKit < Formula
  desc "Specification-driven development toolkit — router, workspace manager, worktree manager, and backlog tool"
  homepage "https://github.com/sahil87/fab-kit"
  version "0.45.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-arm64.tar.gz"
      sha256 "367ad003dfef600f7a4b54d5ab145018f85cf6934189798e3dba8b679d0a8e3c"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-darwin-amd64.tar.gz"
      sha256 "7dabe515b865cae0e009a5d1083f7784899b9183c0dedf3c6d3a0de2529b0b22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-arm64.tar.gz"
      sha256 "e96f55885de7e829b3cdd39763c507404beaff550902f5ded8869c1446d82dc2"
    end
    on_intel do
      url "https://github.com/sahil87/fab-kit/releases/download/v#{version}/brew-linux-amd64.tar.gz"
      sha256 "879d8070edb3e2451cf2c6706f3bba993fe30742947d0993273db607320423e0"
    end
  end

  def install
    bin.install "fab"
    bin.install "fab-kit"
    bin.install "wt"
    bin.install "idea"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fab --version")
    assert_match version.to_s, shell_output("#{bin}/fab-kit --version")
    assert_match version.to_s, shell_output("#{bin}/wt --version")
    assert_match version.to_s, shell_output("#{bin}/idea --version")
  end
end
