class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.62.0.tar.gz"
  sha256 "d4593e328665b2a7086e0cec82cabb92853e10934712c86224b0eb1024a8f3b6"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.61.0"
    sha256 cellar: :any_skip_relocation, monterey:     "92ea12b4e6861124eb4f9f823a14baabd25a5228c581430f896c5d22dfc27b0d"
    sha256 cellar: :any_skip_relocation, big_sur:      "30602681000e54cac02348b201682e32fe505c1ab90dc8d2709db629af1e07dc"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3e8fc74a6bb18b0d53f0ed18c3970330f922ff3cbcfddbe9b2816da678f78df2"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
