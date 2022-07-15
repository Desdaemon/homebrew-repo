class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.38.0.tar.gz"
  sha256 "3cf5214e376b9c380d37ae83161baf63f71d90c8db7b1d761a6d6ecd6c11f731"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.38.0"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "37231eb4cce33ab21261cfbc1ba2029ce19779b6ccef4b5bc4fd63b799cb23db"
    sha256 cellar: :any_skip_relocation, monterey:       "fd5d9276031469cc20c632da6ef448401514ea1e27a65f97f29725289c3567ab"
    sha256 cellar: :any_skip_relocation, big_sur:        "47d6bb9a9367562aab32492390cfdcd7d02fc209e9812c8ceae1d53b2bf9614d"
    sha256 cellar: :any_skip_relocation, catalina:       "adb00fa48e04ac49928f4280993d8db02a59d01f32631fd5c2bd51382a8acece"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "605dd121ac8f60377c98ff9d5b5d867425a88554e0859c80369d4400f7570780"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
