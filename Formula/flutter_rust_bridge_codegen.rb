class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.79.0.tar.gz"
  sha256 "363c5f72f5d60f8d358fc72baf738c1df1064c34979f8ea42fe3a756e8968aca"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.78.0"
    sha256 cellar: :any_skip_relocation, monterey: "bd79bb1f891898615f2d56a4bf29fd06f3bfbdb1d159aada9aac3796b8b5531d"
    sha256 cellar: :any_skip_relocation, big_sur:  "5b9a765bff34f33916160fbd994aed68113e83cadd459530d740a5eecd74f73d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
