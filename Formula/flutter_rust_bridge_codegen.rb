class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.41.0.tar.gz"
  sha256 "f00d0783482664f2b078e6d958f55c8bcf16d2b5c1da049603092292a704eaee"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.40.0"
    sha256 cellar: :any_skip_relocation, monterey:     "85c0380130fa0758f6d9298a213d9f5d9e671bd3353d4b85c32ffc3d77810e5b"
    sha256 cellar: :any_skip_relocation, big_sur:      "eb0d5e199fe1c017f8cae474c31cf4b8c58a1bc5c70dba62451561ea659bb110"
    sha256 cellar: :any_skip_relocation, catalina:     "778317381cf5da8a964bfc67d7ec0b002bd705404a07d6f36826b8ca649cd80e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "695c45b02ee78b251317100871c9fef1343dd381879bc43c5ebf77fd63ce0e31"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
