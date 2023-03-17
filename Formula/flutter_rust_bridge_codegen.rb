class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.71.0.tar.gz"
  sha256 "158eb02fcc5401e711866eb2939136ad26d5c0217a0f913c26ac6d104a3303d6"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.70.0"
    sha256 cellar: :any_skip_relocation, monterey: "1b1e9b67b83b94fd54306fcebca18700c7d1eb99eb0c8c31ebd595cc61d7d2fa"
    sha256 cellar: :any_skip_relocation, big_sur:  "5f8786b44034b028adb92a511b609166a2b779a531e7a9616315d32910b6c1f7"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
