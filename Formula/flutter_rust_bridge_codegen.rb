class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.48.0.tar.gz"
  sha256 "0c1b431e1f24bfcac6a0473d62ee380db3322950b29068d0473a9fb37715c0e2"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.47.1"
    sha256 cellar: :any_skip_relocation, monterey:     "85ffaea33a1624c6be0c0c3d9c4d68237aa2cd5713e5222defffbfacea6d7c1a"
    sha256 cellar: :any_skip_relocation, big_sur:      "3e883d5fba12c557a14a7f30eb8bf38ef226b84cc0ddb382d0f4d5ae2dd852d7"
    sha256 cellar: :any_skip_relocation, catalina:     "5a11f8203d01c8a5c951665fc77061ecee34456447f2911c22820723a48ee1b9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8b164a57b68a1dd5ad1f326e4354e86ef7b1b9cebef1ccfa605d33848f57b563"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
