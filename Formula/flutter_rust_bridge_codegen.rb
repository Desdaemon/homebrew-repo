class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.49.1.tar.gz"
  sha256 "78b6efedb7d3feea81cf08755e075909ab2ae07c457cce9342da1d9c95c622ec"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.49.0"
    sha256 cellar: :any_skip_relocation, monterey:     "c9b1490ca71c5bf898eaa8b710e4fb34f4ef3cbf4d0cbb109a98650b9e660d92"
    sha256 cellar: :any_skip_relocation, big_sur:      "d5b81374e4826c0f104d5d248fa233eb6753609503611ebb4d3d91bb4961b662"
    sha256 cellar: :any_skip_relocation, catalina:     "1fabd6dd9332e369da0e4f4eba65e77df7e49b2bce71d89bac8882397e31825d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7587f9843d9380982fbe4fd4abba363d00691b5863ef696a959831b73a6362d0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
