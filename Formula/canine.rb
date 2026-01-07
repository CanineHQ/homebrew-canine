class Canine < Formula
  desc "Kubernetes CLI for Canine"
  homepage "https://github.com/CanineHQ/cli"
  url "https://github.com/CanineHQ/cli/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "489b0c56616bd28507312008731bdd726d8f496479594594eb5ef75e04a00af9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system bin/"canine", "--version"
  end
end

