class Canine < Formula
  desc "Kubernetes CLI for Canine"
  homepage "https://github.com/CanineHQ/cli"
  url "https://github.com/CanineHQ/cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "d8fecac22be30466f761f21fe8e56ad5f4d130a7208b6eb623d3806929e6aa25"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"canine", "--version"
  end
end

