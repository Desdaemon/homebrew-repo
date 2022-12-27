class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.58.0.tar.gz"
  sha256 "1e4353190a94b90375e9dbc3708c7b6fc2289dd58beb401d19d4dc1ed5c2baff"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.57.0"
    sha256 cellar: :any_skip_relocation, monterey:     "531927aa659aa0dd6e5e93126d7065cdf79e0f971bcbed58a4ff0303ab3590d0"
    sha256 cellar: :any_skip_relocation, big_sur:      "f954ca32af8064340e908506046f9f788ad9348d658078a8c2c69fadde4ce4d7"
    sha256 cellar: :any_skip_relocation, catalina:     "23cf859076909f9b66502700391e1b39258f155c64e39ee36fe769605cafad85"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b499cf3532a372e2eb9ea418a4bcb3223b403080eda92a210435e45737041880"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
