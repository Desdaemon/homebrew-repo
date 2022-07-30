class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.38.2.tar.gz"
  sha256 "9edb4c41ec8ea9920c9e06a00658057d77e5bfe098caea54eea18bf9c2a95536"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.38.2"
    sha256 cellar: :any_skip_relocation, monterey:     "2a3b200b56efd7e84956ec1e6b2760b9c296a8071106082bfa22a4fafb4981f5"
    sha256 cellar: :any_skip_relocation, big_sur:      "1f61d2d5d8b004acbf7378cdb16a2b50a5475748a0618a81bff12d25f4e10541"
    sha256 cellar: :any_skip_relocation, catalina:     "14069c609ffd9ceec19343d0c9555356355cc726cdb925297cdecad027a4cdf4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0f62598533a56df0b3724feeb76d652f2446b05917a2f5b12e75df10720bc641"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
