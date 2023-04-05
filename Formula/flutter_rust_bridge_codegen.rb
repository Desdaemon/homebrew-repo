class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.72.2.tar.gz"
  sha256 "9fe1bc7c42ff9bf6f87c4c55a75c878cfc91e3ce355033c45e71a5a59f6de9fa"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.72.1"
    sha256 cellar: :any_skip_relocation, monterey: "d7c7ad9c26aae52033558629ab4396ad4bafb55250ec831e93248edc5507e94c"
    sha256 cellar: :any_skip_relocation, big_sur:  "e271f785671457a24bcc7926bc1cb7f380df80c5b162c6ae78d0f11536eed3a8"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
