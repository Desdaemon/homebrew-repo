class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.38.1.tar.gz"
  sha256 "8aa8e8479c0479e3cbf38d944438a690d46f920eaf159649f05df48862d4522d"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.38.1"
    sha256 cellar: :any_skip_relocation, monterey:     "165d86dcac788683bc06f2e8a5f6604fd0478f51edebfd3cac1b6b1228a97715"
    sha256 cellar: :any_skip_relocation, big_sur:      "e8134ce08111cb5d55812fbaac91801b8460ef4d1d30b728734eefcdb5350868"
    sha256 cellar: :any_skip_relocation, catalina:     "fef96d269996cd1fae6f3fe4fc5e6ce76f44075b274d2e63fac8e993a30116ad"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fccd27d527f2bd787bd4e9aa65fca5d9a1501bb337213ce2198afadee7a4bc1c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
