class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.59.0.tar.gz"
  sha256 "7df6dbaa2d4db24ba31daf5db787cd06d5602c62b98202cfde5c0e70342bcccc"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.59.0"
    sha256 cellar: :any_skip_relocation, monterey:     "3b1d28863003c2578907eec047a93de6c581bc6892f94fb3c3c8cf197fe36a0d"
    sha256 cellar: :any_skip_relocation, big_sur:      "236b2727a14dd991d4547fd54319a7348f3f08fb9e7f3565e571d508a3ae255f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fc9a1757ef8076d50d9cc20af216ce8c13e6287fccf4cb4b9f556f7fb4d63cde"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
