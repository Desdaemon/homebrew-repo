class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.53.0.tar.gz"
  sha256 "e7228f803c1ccdbfede29bb7410cc71ae027bc49e8aa5b966192d82ce953f636"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.53.0"
    sha256 cellar: :any_skip_relocation, monterey:     "269ec31af33cb0d3e2ced4b66bbc54e93c5fb3615d8a46ea8dd2adee42bc909f"
    sha256 cellar: :any_skip_relocation, big_sur:      "fd95ce180dc744322490aa8be6ed84953b4a1e44623e6c547195255fff2f6825"
    sha256 cellar: :any_skip_relocation, catalina:     "216be4b6bc6d890059195fbbcbd3509e52d90a1cc73d2630928bf42c831cf79c"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f87683be92dc41dcfd28e77d4f57888482444a2b8f2946e6b9ba3ded7cfaa759"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
