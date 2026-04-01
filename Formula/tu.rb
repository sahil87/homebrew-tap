# typed: false
# frozen_string_literal: true

class Tu < Formula
  desc "AI coding assistant cost tracking CLI"
  homepage "https://github.com/sahil87/tu"
  url "https://github.com/sahil87/tu.git",
      using: :git, tag: "v0.4.3"
  license "MIT"

  env :std

  def install
    system "npm", "install", "--include=dev"
    system "npm", "run", "build"
    libexec.install "dist/tu.mjs"
    libexec.install "dist/vendor"
    (bin/"tu").write_env_script libexec/"tu.mjs", PATH: "#{Formula["node"].opt_bin}:$PATH"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tu --version")
  end
end
