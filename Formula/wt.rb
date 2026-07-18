class Wt < Formula
  desc "Git worktree management CLI"
  homepage "https://github.com/sahil87/wt"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-arm64.tar.gz"
      sha256 "037cd9a6fabc0c46ed8bb551a5f4a4c8d02c0d6d20e1747411dabb12db8f6b57"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-darwin-amd64.tar.gz"
      sha256 "77c3721f8402f184d1570ec3ea80e5c74182725070b40837b780c070c1099ac0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-arm64.tar.gz"
      sha256 "606a8db3e8cc9bc49f1e3b139a315a5b4a1c240b37ecc9426e9aeedbb93c9cc6"
    end
    on_intel do
      url "https://github.com/sahil87/wt/releases/download/v#{version}/wt-linux-amd64.tar.gz"
      sha256 "7b666225b4704f436815bf154b3b5c60cdb5148932ffa58390f664bc83cdd816"
    end
  end

  link_overwrite "bin/wt"

  def install
    bin.install "wt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt --version")
  end
end
