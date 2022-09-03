class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.42.0.tar.gz"
  sha256 "50a18609499d304b6255189669ec480814d3d19345742488d067d5bffe057690"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.41.3"
    sha256 cellar: :any_skip_relocation, monterey:     "3249ac090f0cda40e59dac598f49b230b9e52480654cf951b1e0ca144c7281b5"
    sha256 cellar: :any_skip_relocation, big_sur:      "b41e725889835aa3bd6a93cdae6fafc7b07ba90c3bf6d18a2b2d63917c86c8c5"
    sha256 cellar: :any_skip_relocation, catalina:     "bca0ac388e49b904c3246a2b43a61581243130957065b77a3a7f0a287774096f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "2924307f352916223ae95b19750b99d05d45b7c2e8ffb18710b133e004e2e6f9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
