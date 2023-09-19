class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.82.1.tar.gz"
  sha256 "f7dae3ac2aaa8b3aad89ccd03dc7f49da01494496c00ad39dec003a570144c20"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.82.0"
    sha256 cellar: :any_skip_relocation, monterey: "9d94bd475fc1b601ad002478c337584103c1a51ca76393cfe02b1fe8570406e7"
    sha256 cellar: :any_skip_relocation, big_sur:  "91e9d282d837650a69673004657a2a143017a9ae4a821aab684f2c7212509e79"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
