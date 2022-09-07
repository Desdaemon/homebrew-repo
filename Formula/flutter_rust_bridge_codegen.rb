class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.44.0.tar.gz"
  sha256 "7157d2adae6e4d9ab0a200d7048b7f2deec9eaf659821f66bb3584d1a151e8be"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.43.0"
    sha256 cellar: :any_skip_relocation, monterey:     "c5f5da51162ba597682939f02295ed617279e4ad8fcf29cfbbc432e24a2849cb"
    sha256 cellar: :any_skip_relocation, big_sur:      "7fa1d883d5c76475fe942725313dc8905cbe988df3062b74584c863d3700a971"
    sha256 cellar: :any_skip_relocation, catalina:     "d82be926d19b1aebeb77c18e8a2db88b996159050082139091407e7b73ca0dd8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b3a539a99683092c55fc2dc50afbdb96748e2f38110937caab50e135b0a18b38"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
