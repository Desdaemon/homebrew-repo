class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "61ab3dc2a1aad76e455903e290ed720038547fc772c02490af04928687ee5e2f"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-2.0.0"
    sha256 cellar: :any_skip_relocation, ventura:      "ba342e4575ad2bf12bf91f3ead964f24da0e8111d5cebb66c3f2bb358ad09d18"
    sha256 cellar: :any_skip_relocation, monterey:     "9df868698b941b198943ef227808ae0b50d815cdc93e751793be751f98ff89c4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3f95c08677fdb5407871e2c1cc9eea104ebeb5304b237f03a3477c554b6624d7"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
