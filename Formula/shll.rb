class Shll < Formula
  desc "Meta-CLI for the sahil87 toolkit — update, shell-init, and version across all sahil87 tools"
  homepage "https://github.com/sahil87/shll"
  version "0.0.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-arm64.tar.gz"
      sha256 "fed7b8de6fb3bcc0a579a50793bdd1ce8529539f68a7abb92f48cd99cfd78de9"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-amd64.tar.gz"
      sha256 "b77eab9f682aa51d4fc9d8908d018236dbc3224742612dbb39dcf16fff5e6296"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-arm64.tar.gz"
      sha256 "ca4b6326f818a51ac8aa118bf1acd9493e42312b7d39bbdac6545247266d8240"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-amd64.tar.gz"
      sha256 "9e5a8eb9767e9bbd92b9b281f9e4ad0db1924fb153381f415940964ca313e3f9"
    end
  end

  def install
    bin.install "shll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shll --version")
  end
end
