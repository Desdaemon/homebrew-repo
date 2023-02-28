class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.66.0.tar.gz"
  sha256 "fb7690dec45f7dec115d6e166097ff31d068238b23b5598f2ab9f6e5b110a7f4"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.66.0"
    sha256 cellar: :any_skip_relocation, monterey: "975659e6902b0a3d439208c3a71925acfcd2d0d868fbbed870000670b938453d"
    sha256 cellar: :any_skip_relocation, big_sur:  "993371fa6423c8f5d8a7086a90957cba40801161e02c4df305c31dfeedb01d54"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
