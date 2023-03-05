class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.68.0.tar.gz"
  sha256 "163ee9fe9e96392d6ed08cd9c5f1a43314ede71dc7d52f2267972e507b374631"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.67.0"
    sha256 cellar: :any_skip_relocation, monterey: "e19bbbe254bc166e222d55739504ec1ac92a080e234d8b29df24cf03eb6b6596"
    sha256 cellar: :any_skip_relocation, big_sur:  "c27bf46cc13002c46c497d3b714cb9847169b008f1d60a68411624a9e7b5e9dd"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
