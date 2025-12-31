class Canine < Formula
  desc "Kubernetes CLI for Canine"
  homepage "https://github.com/CanineHQ/canine-cli"
  url "https://github.com/CanineHQ/canine-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"canine", "--version"
  end
end

