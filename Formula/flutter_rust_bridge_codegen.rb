class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/refs/tags/v1.82.6.tar.gz"
  sha256 "8f84dfbccd0bb416ea249d2da44be98ade023aef40440fc74e856388673b3b7c"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.82.5"
    sha256 cellar: :any_skip_relocation, monterey: "32826dacd00cf108d0c0443461bff5aaff5ef898201b53eacb9d6d51d37e308b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
