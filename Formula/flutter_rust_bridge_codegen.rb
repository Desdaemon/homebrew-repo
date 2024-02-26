class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/refs/tags/v2.0.0-dev.25.tar.gz"
  sha256 "a62d3f949302c945ef77aa0ea97ea9c6a744d898f09be5f4340ad33dc8080e07"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-3"
    sha256 cellar: :any_skip_relocation, monterey: "6f6117dd206203b4f873318ac1590bcb6a11f7b80320f68a9ece72c716da3314"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
