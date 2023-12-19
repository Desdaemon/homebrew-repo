class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/refs/tags/v2.0.0-dev.2.tar.gz"
  sha256 "27accbb93e4a801f4f19955c02ae9234063c77b750f4327259439dcee9d77485"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-2"
    sha256 cellar: :any_skip_relocation, monterey: "54aba59ac453dbc2a8702d75c0f8f93c9f1f4ba5038cd2a7b016419a0ed3a8b4"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
