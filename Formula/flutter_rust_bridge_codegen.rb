class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/refs/tags/v2.0.0-dev.2.tar.gz"
  sha256 "27accbb93e4a801f4f19955c02ae9234063c77b750f4327259439dcee9d77485"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.82.6"
    sha256 cellar: :any_skip_relocation, monterey: "53f17fe1a730e3a39bd228226c23e4ba1974c07082a8ef615ceefd8b2490bae6"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
