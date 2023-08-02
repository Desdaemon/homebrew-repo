class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.80.1.tar.gz"
  sha256 "5c1494e79024de228a9f383c8e52e45b042cd0cf24f4b0f47ee4d5448938b336"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.80.0"
    sha256 cellar: :any_skip_relocation, monterey: "4e5c2c73240da0d3744fc3d678a29d26787710fd3c1084c274a14614c1a08f9d"
    sha256 cellar: :any_skip_relocation, big_sur:  "812b373e4fdeea9f17e30ee6bd8541d0e9235a50668d0da4bcbb8e675cfb0621"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
