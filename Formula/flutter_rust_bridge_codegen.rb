class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.49.2.tar.gz"
  sha256 "2afc092b2f8a3376a48e7682e605920e09fbd764c171369d8e2a39ef1d20875b"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.49.1"
    sha256 cellar: :any_skip_relocation, monterey:     "d6b0cbd0ba2b6538fa6d4be1c171a5bfb32f71d6c005df7acf9014c040ae4065"
    sha256 cellar: :any_skip_relocation, big_sur:      "0a52c23f9e888a874e7a024e0d3505e60151114186182b2602d80ded36f27bcc"
    sha256 cellar: :any_skip_relocation, catalina:     "4b907052ca14f579a1dcadbd79eb15b1f371a0a4686fb2d2573a09fb0437ae0f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "716e8d2894a8b77f04ad191bfe2c563a19ad2d8a18e59518bce0ea27f3553564"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
