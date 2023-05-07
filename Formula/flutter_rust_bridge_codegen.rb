class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.75.2.tar.gz"
  sha256 "711d0dfe473fb2b319b3d774242f118ee98711aefdb643296332680ac7f3ba7b"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.75.1"
    sha256 cellar: :any_skip_relocation, monterey: "0255140cfa75c9140fd56a520f0b68964ae139f2b2d514e5a16329752841fa9f"
    sha256 cellar: :any_skip_relocation, big_sur:  "8c283b2f659ace6ace3e24dfeeeb5c8111c90fa632af84f0914149a32a59bfa2"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
