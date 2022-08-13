class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.41.1.tar.gz"
  sha256 "49727e4b4cb1d245899f76bf0f818a52d28f509401a337fdd32971a405fa94e5"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.41.1"
    sha256 cellar: :any_skip_relocation, monterey:     "9b731e80cb59b5cb6be8b17b4298003aed1374eeabd4103ab298e81fc52c4027"
    sha256 cellar: :any_skip_relocation, big_sur:      "b0a101a8eda6a36faafc8c329b2404711dce0e28b4a37bfa7a0e40b9a3f2e377"
    sha256 cellar: :any_skip_relocation, catalina:     "9f602e5aa1f9a568463731ee6a8e134fbbbc50866d136ff4576b8d9b4a9eaa46"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "5abf655f35875fa901498fcaceb200c4ff56c4acac8b964733d9dce2503f717f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
