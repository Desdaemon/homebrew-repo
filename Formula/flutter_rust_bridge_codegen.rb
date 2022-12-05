class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.51.1.tar.gz"
  sha256 "bbd74c7971c890ef3b97bf00a45476fe72b7d39ef9d391eb509b7b593bcc8e0c"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.51.1"
    sha256 cellar: :any_skip_relocation, monterey:     "3abaca3d3e1067e372c4b9583592ff53e258fbf88c4affa86fe4cec4703120f3"
    sha256 cellar: :any_skip_relocation, big_sur:      "dd9d30087c9ebccc7037f0f94301a7ab6192c9a78cbed03f0c635a38f64b5120"
    sha256 cellar: :any_skip_relocation, catalina:     "d256fc3355b1ea9c7cb12da47c5b1a7b2ba3e83aa58baeca7717cf696045d786"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "cc145a5f92f49568adfed46c94d3f86227f2ccf46130cad86bb23f86fd00b331"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
