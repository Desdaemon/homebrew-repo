class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.71.0.tar.gz"
  sha256 "158eb02fcc5401e711866eb2939136ad26d5c0217a0f913c26ac6d104a3303d6"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.71.0"
    sha256 cellar: :any_skip_relocation, monterey: "396ce4e59f77d7a6dc557865b803a021be8f4ebe831a1813d673a5901503d215"
    sha256 cellar: :any_skip_relocation, big_sur:  "d84c7ad8c6acfddf9c453b277c42d0241604dd79e19990542ad44b968d9e06bc"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
