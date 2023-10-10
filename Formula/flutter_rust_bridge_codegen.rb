class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/refs/tags/v1.82.2.tar.gz"
  sha256 "fdd41494f1fbe577a9476636c0fed079ad27014d0df0d8225433943b9a910a72"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.82.1"
    sha256 cellar: :any_skip_relocation, monterey: "69e238383693af336ce5a4cfe84f4e1fbbd4f030e9365a98021465fcbf70ef50"
    sha256 cellar: :any_skip_relocation, big_sur:  "675b46f9f7ed15fc6ee70e0b28524158906aebe71e396b50d05bc39916ee08ad"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
