class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.72.0.tar.gz"
  sha256 "1cc8bf2cafb85ab2e4369c4ebf7082a1ea3b836698e56e13dbce5cf40328c5d2"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.72.0"
    sha256 cellar: :any_skip_relocation, monterey: "5309c319a6cf5a09c2e009c958942104a6cb837af5a6caa5767a6ebf51b04c67"
    sha256 cellar: :any_skip_relocation, big_sur:  "7a9b5d66f2d9b0e598b582a1e85e2ae771b46ac563c327c0debb1d7e9c2cb999"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
