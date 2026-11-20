class Shll < Formula
  desc "Meta-CLI for the HexoKit toolkit — update, shell-init, and version across all shll tools"
  homepage "https://github.com/sahil87/shll"
  version "0.1.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-arm64.tar.gz"
      sha256 "a8dffa32ba6c501e649fa98da74cb1417d4fd9ab41adcbf0191afbb3e9e3660f"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-darwin-amd64.tar.gz"
      sha256 "5995cc4416cf40be7e3e6aed91490b45faed30fcc43c770be531e87aaf719309"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-arm64.tar.gz"
      sha256 "f2b4763fff15972e912efd63c248e3383f2c3962dbc6378e07a286495d3436dd"
    end
    on_intel do
      url "https://github.com/sahil87/shll/releases/download/v#{version}/shll-linux-amd64.tar.gz"
      sha256 "df016c443c12042c67ad98bfaf7a5607795b6a75e154f0ddacafe74d24f21c15"
    end
  end

  def install
    bin.install "shll"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shll --version")
  end
end
