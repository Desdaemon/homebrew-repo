class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.47.1.tar.gz"
  sha256 "a3fb2d40a5ccafe6fc52be145545d75df9318e90ceaa5687f2c8b98e6e8a02aa"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.47.0"
    sha256 cellar: :any_skip_relocation, monterey:     "16bade08ab08e88c5bddc3428c860e6ba565558844f8efab07b90a0ac48607fd"
    sha256 cellar: :any_skip_relocation, big_sur:      "f8ee77ac43f10de227bd5d638340d6b1b0cfba886bfc9ec315dd88e85a901962"
    sha256 cellar: :any_skip_relocation, catalina:     "82302466a2dbf7bbf7ce7891603a43fcd6e38ba0a3073198be0ccc5c8d2eaa63"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "06a6d47646ea072a7caea09ef6d0520e8445dd79b2299a05c80b080290e85104"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
