class Garbageman < Formula
  desc "Minimal, safe, permission-aware macOS disk cleanup CLI"
  homepage "https://github.com/yunusemreyakisan/garbageman"
  url "https://github.com/yunusemreyakisan/garbageman/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ae2a3d534d1bd0816bf2439cfbeb6c6bc5f0035ffb9cd699725a768345bb0a72"
  version "1.0.0"
  license "MIT"
  depends_on macos: :ventura

  def install
    system "swift", "build", "-c", "release"
    bin.install ".build/release/garbageman"
    doc.install "README.md", "LICENSE"
  end

  test do
    system "#{bin}/garbageman", "--summary"
  end
end
