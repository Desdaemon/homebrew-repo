class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.77.0.tar.gz"
  sha256 "f3fbb83fc4da116b993fb960d21db43f779f867eb3500496bd051917ddfd44c2"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.77.0"
    sha256 cellar: :any_skip_relocation, monterey: "b20e284d14e07f00864e99cf6ee980373acf0ecad08b679cae6ea7d354aaf490"
    sha256 cellar: :any_skip_relocation, big_sur:  "571ac7d3b0447960b6634cc4be9fc47f3fd443f0f665d349658f40c0ac62b62d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
