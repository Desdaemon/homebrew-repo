class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.38.0.tar.gz"
  sha256 "3cf5214e376b9c380d37ae83161baf63f71d90c8db7b1d761a6d6ecd6c11f731"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.37.2"
    sha256 cellar: :any_skip_relocation, big_sur:      "d1b616bc137f70ac82bbf6bde623876f73c09999795a6de6158bc8adfc5f2f18"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4a9d8c5efeb94057cc21b46dc5f1c5fa40949b2ef74e2fc61eb7829021e1299e"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system "true"
  end
end
