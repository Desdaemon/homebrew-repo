class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.48.0.tar.gz"
  sha256 "0c1b431e1f24bfcac6a0473d62ee380db3322950b29068d0473a9fb37715c0e2"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.48.0"
    sha256 cellar: :any_skip_relocation, monterey:     "c94487eef81ca9a858dba48a44d174daeae7217a6d9580a32bb8379b8b9ff359"
    sha256 cellar: :any_skip_relocation, big_sur:      "cc750dcbee34a87fe257447596baafad976746832ab38894e96454a40cc0f83a"
    sha256 cellar: :any_skip_relocation, catalina:     "3cc997341ffa9ad782cec39fd0bf62b8b101c88ee577b0d8410de85f738296d6"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f0fc6b778c8d554ad49811dff10a6fb7e248398b0167e79ea48e2e5f3f2c130b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
