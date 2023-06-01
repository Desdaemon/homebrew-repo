class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.77.1.tar.gz"
  sha256 "698434f81f6b4bf2e891c45613e2396c022e38b2414cb39984353334be5ac035"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.77.1"
    sha256 cellar: :any_skip_relocation, monterey: "836763c715455153c5742183d3def285a15abc1671721fb9da9638503a657b03"
    sha256 cellar: :any_skip_relocation, big_sur:  "65f0ee40f7fead347f7dfeb68f3f3c86b943ff876be390c318e3113da95ea3cf"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
