class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.50.0.tar.gz"
  sha256 "5ab09f8be351d5ccae0d3b0fac64dcd74a355931890194f8fcbf16d4751bf260"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.50.0"
    sha256 cellar: :any_skip_relocation, monterey:     "2d9e6cb361f37d99ae7666f395f2bcdab78994f2068b3d3b2ab344cef0f54101"
    sha256 cellar: :any_skip_relocation, big_sur:      "cf70fd637fea1b0e2a2b00cd54220c033eef24fc4108689c53b1eaaf686f3746"
    sha256 cellar: :any_skip_relocation, catalina:     "8dbadc4f71bf3fa77825185ce0156fc697bb81738b95b6876d94104221f90eca"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4b0243786d2703d09901776810cd696531426382846e6d2f58d329b7cfdf817e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
