class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.63.0.tar.gz"
  sha256 "2ee7ce8c665b8132986864331195fc799d0151f62607fdea4b80e3e67cd3437c"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.63.0"
    sha256 cellar: :any_skip_relocation, monterey:     "e405129e55d3743190c01d0c22c3a72239f2063eadfe3e84dede2f78975bef04"
    sha256 cellar: :any_skip_relocation, big_sur:      "67a29dd8db419634bca9b47ce7a311e6c743a4ba5aafc1f1fd6b3a1b9aa461da"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d18d5595451d1c4ff0444bfb9d829267ee1d2ced58278214ffa09a2c85fdc2f0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
