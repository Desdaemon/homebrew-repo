class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.62.1.tar.gz"
  sha256 "dabcbc922430e5f0ad50f5440ed69ecb49eb9202918d82500ac9eac4072142b5"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.62.1"
    sha256 cellar: :any_skip_relocation, monterey:     "c10b47b5cfad6ecef6ad03b3414724655ff53574a0148733075b14b20d6d175d"
    sha256 cellar: :any_skip_relocation, big_sur:      "30b736ae791627200af4f36e001eb4d45d73d782831eac4a612823d315a8a301"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "817d917d45217fdce3c0f46c14138ffb05807a0d1f90ddb2fdbf19aff258b975"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
