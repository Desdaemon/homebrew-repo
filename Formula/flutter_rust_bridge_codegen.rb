class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.72.2.tar.gz"
  sha256 "9fe1bc7c42ff9bf6f87c4c55a75c878cfc91e3ce355033c45e71a5a59f6de9fa"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.72.2"
    sha256 cellar: :any_skip_relocation, monterey: "2635c5dacaac56218d67e09b018be56cdaa9a1447e39f0bdac9b38f1c5cda9bc"
    sha256 cellar: :any_skip_relocation, big_sur:  "177adac78c9aed91493cc1f7a13e16510ca58283b0498518ab3ea3eb7b82af8e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
