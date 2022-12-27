class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.58.0.tar.gz"
  sha256 "1e4353190a94b90375e9dbc3708c7b6fc2289dd58beb401d19d4dc1ed5c2baff"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.58.0"
    sha256 cellar: :any_skip_relocation, monterey:     "b12967eb346976cd7d4672b775e1cd6be75778a9373cdb9559637819e645fd86"
    sha256 cellar: :any_skip_relocation, big_sur:      "13dea4501148bea00ffb8a20b4c5b5fc603608ebb88e27634ed1db773132614b"
    sha256 cellar: :any_skip_relocation, catalina:     "8955385e7d7f190892fc9ffc78c1c959695dc8a21b0a70ce4858caaf17b1a6d4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ffa1493f0ac8b151b77c202b06dda0c932b40a291122dc9e4ae093a093efa2e0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
