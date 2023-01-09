class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.60.0.tar.gz"
  sha256 "95c8d679dbd79859817d9e0f043de5a4465746316ac26050cb4294618a90a7c3"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.60.0"
    sha256 cellar: :any_skip_relocation, monterey:     "dd295863d915585527d1fe0d6c9dda97cba2f8f811283262614eef2a960fc960"
    sha256 cellar: :any_skip_relocation, big_sur:      "6c9310fdd4c821dca1050e1ea4fb1ec9f688c65c31af886a7d6d66e90c79f74f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f2b5e135e21906ece937deb6bc2ce711879f841b32709d8ded82e3c19580432c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
