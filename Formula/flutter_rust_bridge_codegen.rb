class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.70.0.tar.gz"
  sha256 "227fde7e4520cb59cbb5889acf811103bb31a2287719fdd916d5bc1b5cc9c6fb"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.69.0"
    sha256 cellar: :any_skip_relocation, monterey: "386875649b91eca6e5edfe9f855c7444b4bc41dd011438cc0a33f87de674ef1e"
    sha256 cellar: :any_skip_relocation, big_sur:  "9b37826c093b4a448c73511da4b594287ba379bf0b868196491ee45780d7c7fc"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
