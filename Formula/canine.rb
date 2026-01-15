class Canine < Formula
  desc "Kubernetes CLI for Canine"
  homepage "https://github.com/CanineHQ/cli"
  url "https://github.com/CanineHQ/cli/archive/refs/tags/v0.1.20.tar.gz"
  sha256 "38aeb3a59fd38d7b7637ae78b0214fbe8481df784aad02a64d7daddd6fd53013"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"canine", "--version"
  end
end

