class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.81.0.tar.gz"
  sha256 "a4c857b7b4b7012ad5e7b5191e481b4f5894624a96be21c2dd88b06a224d7baa"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.81.0"
    sha256 cellar: :any_skip_relocation, monterey: "a9ec6fe71c7e28c51bede7739d955a0a532f1b8037b5cc1c28790fe76ea264bb"
    sha256 cellar: :any_skip_relocation, big_sur:  "eedf18cc4955d8c29dae5525ce5fce5126d9bd045bf40624adac1ab8c3332eff"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
