class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.46.0.tar.gz"
  sha256 "f054837cf44d8248f1f8afea8427af3fc8554d29e7bd71c76b8af1c565c4ba28"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.45.0"
    sha256 cellar: :any_skip_relocation, monterey:     "7819c7370e47a7882b90235419278c6181333b950f006ce17c7261d0aa865cc4"
    sha256 cellar: :any_skip_relocation, big_sur:      "1432961f170cb6e9304c0e7c62d530545c1f219b9c3c9d84eac6c9960d5f019d"
    sha256 cellar: :any_skip_relocation, catalina:     "6714a757620f22d567e002d192c77eb6db31237944fb37a87312b86c208b0335"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "442e361187a2c1257388710eef8bf3bb752394f6df30e1fd60b5e0aea5dd9f2f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
