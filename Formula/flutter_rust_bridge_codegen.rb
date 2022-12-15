class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.54.1.tar.gz"
  sha256 "30bd2f32211a44a23dbf58c8bf714dda912ad2e6b9f0de87e8a30c6a20e9fa75"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.54.1"
    sha256 cellar: :any_skip_relocation, monterey:     "c81494f7a01307a3de9afca633615f6b7abc7e09bfd11d72e0cc9a68f19b85e0"
    sha256 cellar: :any_skip_relocation, big_sur:      "4cc5689d8f53f1712d0d84fed1e13cd6e3d0f46e483933d942f5700ed99bc608"
    sha256 cellar: :any_skip_relocation, catalina:     "9031458f0c665ac558409cc19f66120e9c6c4f2e66bbff15f1b94071678f9f8a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b7ed9b5c934ef9ae3eee5a54505c97e07b791f2e2686deff386e7906276247d1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
