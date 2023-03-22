class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.71.2.tar.gz"
  sha256 "bc2f2fd55d091a7b22efb275111af7a97d1a946e92d952eced41a705e1f50fb8"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.71.2"
    sha256 cellar: :any_skip_relocation, monterey: "f3c3734b54afb9565a9fb4c3a7139a308cf689880b711a634e6f8f52f668bea5"
    sha256 cellar: :any_skip_relocation, big_sur:  "8eb5f2154a921d508b4e871e99aa497cb584637c6580efac5ce6e15a44f8f89a"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
