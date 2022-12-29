class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.59.0.tar.gz"
  sha256 "7df6dbaa2d4db24ba31daf5db787cd06d5602c62b98202cfde5c0e70342bcccc"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.58.2"
    sha256 cellar: :any_skip_relocation, monterey:     "1bd76767ef3b0fe149175cb6a711ab7f64ffc74bc3508902d80c389858d68162"
    sha256 cellar: :any_skip_relocation, big_sur:      "d35ec2768241ae80be2b5ee3d9d917bf9d14f57f760be8c5ad822acdcee7010c"
    sha256 cellar: :any_skip_relocation, catalina:     "80c5f9c77f577024f58a95681225a5062d25e5d390556b65026ce0fd19382dab"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2a8f0fcbd4231e958cd06528caa3345e28754a1286406bb609c93e4cc5e4469f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
