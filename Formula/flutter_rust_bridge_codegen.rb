class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.44.0.tar.gz"
  sha256 "7157d2adae6e4d9ab0a200d7048b7f2deec9eaf659821f66bb3584d1a151e8be"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.44.0"
    sha256 cellar: :any_skip_relocation, monterey:     "b4760c2fe91cc6070788cc0a5e670cf4fb14d4974a0f93a4296b5b74ff8534fe"
    sha256 cellar: :any_skip_relocation, big_sur:      "7b73790c7fae82eca1f5ba8b92d723676b49cdcdbc06a882e107db2cb97ff5c3"
    sha256 cellar: :any_skip_relocation, catalina:     "fa67110f6aa5db38c4674a0dda5aae204c4aa00851180871368beaa73b0ca614"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fe3a34cfa4a307c17a830f5f90e44ae4af323ff8810188440a61612a0ba92a87"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
