class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.77.0.tar.gz"
  sha256 "f3fbb83fc4da116b993fb960d21db43f779f867eb3500496bd051917ddfd44c2"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.75.3"
    sha256 cellar: :any_skip_relocation, monterey: "9dfd23665091b88496d90c9712e467d47411bf0f8813fa0345cf65a9e46815da"
    sha256 cellar: :any_skip_relocation, big_sur:  "c161962a4fa14e37ea6f92c39358e5091204749e49ff285ce51020f9dc63639b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
