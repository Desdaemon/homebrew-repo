class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.54.0.tar.gz"
  sha256 "ed662aef3b48b9d81e0abefc0b9958f39a1fdcc5778f669df1d46dfeac008bdf"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.54.0"
    sha256 cellar: :any_skip_relocation, monterey:     "0b33d31798040d9a934c2d3f362e850c1c590a4617d1fea066eb157deaf66888"
    sha256 cellar: :any_skip_relocation, big_sur:      "0ec368fe0bb2e0477fc8cefefca90f6ed6e6d91e7fa89c9441263c03baa84fd2"
    sha256 cellar: :any_skip_relocation, catalina:     "30a3cd0cbb9608d509ea11041cacbec8e258f6371542507b3be46734c946cd21"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "ba33dcec2d5aa3a0d86f21c02437d183ad5f7edfe43ee1f3a73bce2c1ff7a837"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
