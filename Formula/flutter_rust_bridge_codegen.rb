class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.69.0.tar.gz"
  sha256 "87bccfa4c36c66379715f36c40589a743bef7dfee0bb28d27022bc4d118a6148"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.68.0"
    sha256 cellar: :any_skip_relocation, monterey: "8dcb5e46c0050901e118a2eb399a38f4b5d2e3c0c6efd0943c85a35384c79678"
    sha256 cellar: :any_skip_relocation, big_sur:  "876dd169597206efadf48723f26ed044cdd613b7c83bccb8ece51eeccf11cbe5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
