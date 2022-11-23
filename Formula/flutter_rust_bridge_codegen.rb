class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.50.0.tar.gz"
  sha256 "5ab09f8be351d5ccae0d3b0fac64dcd74a355931890194f8fcbf16d4751bf260"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.49.2"
    sha256 cellar: :any_skip_relocation, monterey:     "0a694a47b3936d9a5e3c6519a256abd11108676564b6d5aabee25508e46702a3"
    sha256 cellar: :any_skip_relocation, big_sur:      "24d56e60cdd92ebedf6674a227a47ca7a9b719a2a40df7916c7c2fa270d4bd92"
    sha256 cellar: :any_skip_relocation, catalina:     "11e2fd3b6a9c58524824695b3970555b9ca309c4cde564bd2d083ea61ca44b2c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9831337bd19eea67c84b01a3597ebdb91c0966c7abba2d3c017cb3b82f6a7f08"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
