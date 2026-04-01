# typed: false
# frozen_string_literal: true

class Tu < Formula
  desc "AI coding assistant cost tracking CLI"
  homepage "https://github.com/sahil87/tu"
  url "https://github.com/sahil87/tu.git",
      using: :git, tag: "v0.3.2"
  license "MIT"

  env :std

  def install
    system "npm", "install", "--include=dev"
    system "npm", "run", "build"
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tu --version")
  end
end
