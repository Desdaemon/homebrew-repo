class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.81.0.tar.gz"
  sha256 "a4c857b7b4b7012ad5e7b5191e481b4f5894624a96be21c2dd88b06a224d7baa"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.80.1"
    sha256 cellar: :any_skip_relocation, monterey: "75571c478fae6d0ae5b0a93dc36f35cd7b8a560919e9f50c4ba393ce71a41fb1"
    sha256 cellar: :any_skip_relocation, big_sur:  "0b7872404e4ecb9d84944dcd5601ae0d6b2014617a66d9bcb1bacf12030cbbe2"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
