class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.65.1.tar.gz"
  sha256 "bb83bd1db9b525c4e90a5fb303a39c2a5267e82b8c3290225918bf3b17d1914b"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.65.1"
    sha256 cellar: :any_skip_relocation, monterey: "584e77306b06ba13b5402cbd3a62f3190dcc82f893f1707431707cf6a27c8335"
    sha256 cellar: :any_skip_relocation, big_sur:  "5c09d35cc72e9f0fe4b57177b65e8f1e446aa70b7dc8884c236f64aafe2e5410"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
