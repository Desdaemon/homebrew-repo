class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.57.0.tar.gz"
  sha256 "a5e84a6d2a283c18d14be5de6cb2ce2cef2b3d1c3da9381d2d34f2b7723ba3ec"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.56.0"
    sha256 cellar: :any_skip_relocation, monterey:     "e6b7e69effcf33a7e889ca0ea98b4714f6fb57f2c619cec6cb5b9b473d2d88be"
    sha256 cellar: :any_skip_relocation, big_sur:      "4b8bfa41892d7711b876d62c62a9ef31ff6c3022eb2b2640309b4d170c540f69"
    sha256 cellar: :any_skip_relocation, catalina:     "a0b04255f9d709fa6c894512cf24af8376dd8f5ddeab815e10513746a5f1f041"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7500e7625a5aa474beeb9057c499f2fe9bbe1b586f157ef52868648bb88fac2e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
