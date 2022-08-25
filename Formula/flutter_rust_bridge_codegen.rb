class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.41.2.tar.gz"
  sha256 "3bd5ed25da178bf4bed427c4dd9b6564db899bc897c48c3e70761adffcb8cc4c"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.41.2"
    sha256 cellar: :any_skip_relocation, monterey:     "832955fb7f84e37091f80aa62c1d3be56e3af4460f67c5089b4220ddceae4631"
    sha256 cellar: :any_skip_relocation, big_sur:      "344b71270f7d851ad713cde8f632f27302bcf0832f3022058f850c054a012ad7"
    sha256 cellar: :any_skip_relocation, catalina:     "52bbaca3dcd076bbd751076b21ad8b04171f72804ef7ee06a7ebc77c834fca3b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9b890f81c549d9ce1521e1db6dc3fe77f33788f11a1c59f32dd20c7410d2b730"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
