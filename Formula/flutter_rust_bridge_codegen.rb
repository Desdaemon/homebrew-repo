class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.55.1.tar.gz"
  sha256 "0009b9e706ee6c7a7d356d8f67f7235c8b2aa21596dec9ef308cdbf9da67106a"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.55.1"
    sha256 cellar: :any_skip_relocation, monterey:     "315fb560dd8bf6ebd1296ae1e3e2bea4d5dd9576574b80125b744bc873d576a3"
    sha256 cellar: :any_skip_relocation, big_sur:      "4414a65156542981d5e2452dcf112eda912237ff58aef24ec4a1ffeb0c578381"
    sha256 cellar: :any_skip_relocation, catalina:     "b474b14018b9cfa966fecfd51c368709c00f1e41ee206380b74f655f45d9ff5d"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "cf51b0b71ebc94e1840538558a60e94836cc7ab65c3f53c9413b2a03df9ae8fe"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
