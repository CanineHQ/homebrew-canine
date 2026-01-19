class Canine < Formula
  desc "Kubernetes CLI for Canine"
  homepage "https://github.com/CanineHQ/cli"
  url "https://github.com/CanineHQ/cli/archive/refs/tags/v0.1.23.tar.gz"
  sha256 "0886e53d9b1c97b2cd1fd7764e91d0747303c20b34370103bc0c8f57c4400da4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"canine", "--version"
  end
end

