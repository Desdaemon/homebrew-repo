class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.39.0.tar.gz"
  sha256 "82748ddafb3c1d578b2cae5cb6a0ce1796f81726afc970f25d86517a910338d7"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.39.0"
    sha256 cellar: :any_skip_relocation, monterey:     "0c92ccdff0be20a2b537f27a624950a9a1712d6bc04f51f279305d75f09fc442"
    sha256 cellar: :any_skip_relocation, big_sur:      "880238127ccf640868b850f946c62d383f6ccac94b90d04b18e919050ec340b1"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "32d53195b9a898d5052ebe65897c7a31f35e11aeb867f2da05ac0a2a93cea461"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
