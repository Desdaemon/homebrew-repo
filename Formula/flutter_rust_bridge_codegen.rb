class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.55.1.tar.gz"
  sha256 "0009b9e706ee6c7a7d356d8f67f7235c8b2aa21596dec9ef308cdbf9da67106a"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.55.0"
    sha256 cellar: :any_skip_relocation, monterey:     "2dcca4f85001c8835166431e05e91efb511b7c8d3e1abf52a8fa350b2c134a57"
    sha256 cellar: :any_skip_relocation, big_sur:      "8f0e21a4056d0bb1a995706d2c643ef8630411512844866a41f8036cb9a1d7e7"
    sha256 cellar: :any_skip_relocation, catalina:     "12c6a7430bea16416f88f5b4abc40e732495e6b611f48ac9fbc1201d55fed484"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "49dc2232d86a110825babb5e25a7fd3c2c77b592f02e550e1cebe6ccc060f9ee"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
