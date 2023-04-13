class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.74.0.tar.gz"
  sha256 "36b457261893f8e12db0e7b7b8ae27deb7be80366c3c8df0d0af1877544fd764"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.73.0"
    sha256 cellar: :any_skip_relocation, monterey: "4191ba07e81cd5f7d6fc93c44b7754ec5a5136c8f09ad4525585bb401f879c88"
    sha256 cellar: :any_skip_relocation, big_sur:  "6a99c7bad7045265ce6ae58e6adc977223a3b46fe707aaaca9b71440a67c3e4a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
