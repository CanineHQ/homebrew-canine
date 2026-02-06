class Canine < Formula
  desc "Kubernetes CLI for Canine"
  homepage "https://github.com/CanineHQ/cli"
  url "https://github.com/CanineHQ/cli/archive/refs/tags/v0.1.28.tar.gz"
  sha256 "0e1834ba641aa525ef8e8aeaa761975e6ae770b602696ce450ba98f322295827"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"canine", "--version"
  end
end

