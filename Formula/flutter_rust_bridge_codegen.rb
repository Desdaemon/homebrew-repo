class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/refs/tags/v1.82.3.tar.gz"
  sha256 "0bb90f01dcf891cf13b440bc426695834befec0f0929e104db2ebe9e558dcb17"
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
