class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.47.0.tar.gz"
  sha256 "8374e9b899622ca83dc07cc29b7188e128ee9b727ffaca5aaeba9da5a5c4a973"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.46.0"
    sha256 cellar: :any_skip_relocation, monterey:     "9f586e888940c88ad67b5523345f3c7f39c10254e652d9dd84f386cb50833481"
    sha256 cellar: :any_skip_relocation, big_sur:      "90862c37c519feb72e0393dd616de861cdecea97816e99ba6da5982bdcd31c43"
    sha256 cellar: :any_skip_relocation, catalina:     "473e61cfd3adfb0c8ccda61705fdb0be54f7b70adc46d1fc106dac1c6f69eb85"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "33f231a3c5f40abf7ae3c287c2e9586fba3c2f6fa89d31219af377d89671c599"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
