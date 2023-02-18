class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.64.0.tar.gz"
  sha256 "04024f0262cc0535cd92ebb863cffd35099e6bfe977abcb6503bb618823e3ae5"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.63.1"
    sha256 cellar: :any_skip_relocation, monterey:     "6da009a94491d82ae402e3d7dc3d4afc7601767d27363dd33dcf2da499ede0ef"
    sha256 cellar: :any_skip_relocation, big_sur:      "553228005dc645f566f1dba93c2e1de629852351975f6ba0e9a117b08810a2cd"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b19a1b32ffcd4f592eaff4ca0099b7c74969ff5aaa8237bd3767f2a82e02425d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
