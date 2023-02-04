class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.62.1.tar.gz"
  sha256 "dabcbc922430e5f0ad50f5440ed69ecb49eb9202918d82500ac9eac4072142b5"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.62.0"
    sha256 cellar: :any_skip_relocation, monterey:     "4bc5dd0ada02284f0fd9693ec0e8c8d6795c245e5d145b97c3005f35fa938795"
    sha256 cellar: :any_skip_relocation, big_sur:      "2ff002761b45b67bcc60201e6fa978556e964aeb40d2a35dab21d5b133de2137"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "195afeae8b38be9e4cdaed1305ac2084b9d5531b774e109416c17b22a615b7f5"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
