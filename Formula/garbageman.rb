class Garbageman < Formula
  desc "Minimal, safe, permission-aware macOS disk cleanup CLI"
  homepage "https://github.com/yunusemreyakisan/garbageman"
  url "https://github.com/yunusemreyakisan/garbageman/releases/download/v1.0.2/garbageman-macos-universal.tar.gz"
  sha256 "4eaa5a8ba29bba669c27589ff6ee8bc734431fc3e17227f7af6d0551cbf10952"
  version "1.0.2"
  license "MIT"
  depends_on macos: :ventura

  def install
    bin.install "garbageman"
    doc.install "README.md", "LICENSE"
  end

  test do
    system "#{bin}/garbageman", "--json"
  end
end
