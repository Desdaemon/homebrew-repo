class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.42.0.tar.gz"
  sha256 "50a18609499d304b6255189669ec480814d3d19345742488d067d5bffe057690"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.42.0"
    sha256 cellar: :any_skip_relocation, monterey:     "c9c86716c41df815809b5b0fbfa6242887b3d1f090b92a2208976ddcf70a01d8"
    sha256 cellar: :any_skip_relocation, big_sur:      "8e8eefbb0157318e1a83ab6aa0e7721b4396c9ab4d1501cf370e877833aec2f5"
    sha256 cellar: :any_skip_relocation, catalina:     "7b10b86a23ea171c5a6c8d65c92e64dd36a2ee01f86f99d5047989d8e7c46de9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3df9a83063551fd3c92408670118617e6f91fd4d2ca6c68c40c7bf434aa2f52b"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
