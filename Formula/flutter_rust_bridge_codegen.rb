class FlutterRustBridgeCodegen < Formula
  desc "High-level memory-safe binding generator for Flutter/Dart <-> Rust"
  homepage "https://fzyzcjy.github.io/flutter_rust_bridge"
  url "https://github.com/fzyzcjy/flutter_rust_bridge/archive/v1.41.1.tar.gz"
  sha256 "49727e4b4cb1d245899f76bf0f818a52d28f509401a337fdd32971a405fa94e5"
  license "MIT"

  bottle do
    root_url "https://github.com/Desdaemon/homebrew-repo/releases/download/flutter_rust_bridge_codegen-1.41.0"
    sha256 cellar: :any_skip_relocation, monterey:     "9236dfc779afa00726f8b696fad023a82b7a1756e4663810b3bc2e29dc5cdddb"
    sha256 cellar: :any_skip_relocation, big_sur:      "b9aff90eec78ef669de35411632afd0ab919d6905f285d889a2c7af32242bc98"
    sha256 cellar: :any_skip_relocation, catalina:     "244996d56b0da439e226a96c54340f2947cf595221c57473082f1b19ce884dea"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0c18b6c6d2bab125fb23e193ec2a23ea05a0c356b93e0dc1e710976563894f12"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", buildpath/"frb_codegen"
  end

  test do
    system bin/"flutter_rust_bridge_codegen", "--version"
  end
end
