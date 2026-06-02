class Shll < Formula
  desc "Meta-CLI for the sahil87 toolkit — update, shell-init, and version across all sahil87 tools"
  homepage "https://github.com/sahil87/shll"
  version "0.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-arm64.tar.gz"
      sha256 "5c7e236fc22849ea8a2486f570855462e48d4e95ce7f4e679718613f63a42a33"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-amd64.tar.gz"
      sha256 "97aad2b6a4fedd29a9cfd454790f011bba03816921442967fc801ce6b74e9157"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-arm64.tar.gz"
      sha256 "481d3743d3ff6b6e02ef2860500c6b45fd1a3e1dacfc328166f9cdce94f48246"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-amd64.tar.gz"
      sha256 "4cc77ab3b4c5a9578039629d9f3f5cd34765b96213c255da3f74b037c4bdd89e"
    end
  end

  def install
    bin.install "shll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shll --version")
  end
end
