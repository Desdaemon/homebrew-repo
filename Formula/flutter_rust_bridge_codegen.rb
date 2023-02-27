class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.65.1.tar.gz"
  sha256 "bb83bd1db9b525c4e90a5fb303a39c2a5267e82b8c3290225918bf3b17d1914b"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.65.0"
    sha256 cellar: :any_skip_relocation, monterey: "611f55dffc946bac19ec94c28613c2bfe72f08243fa73eae35b2131f87282484"
    sha256 cellar: :any_skip_relocation, big_sur:  "7102bcaf311ed4f8860fbb712eb1e87f21058f542f92fa3fc8034b6f8016c921"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
