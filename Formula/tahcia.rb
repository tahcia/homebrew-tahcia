class Tahcia < Formula
  desc "Tahcia CLI tunnel"
  homepage "https://www.tahcia.com"
  version "1.0.0"
  url "https://github.com/tahcia/cli/releases/download/v1.0/tahcia.zip"
  sha256 "72dd4e95512c5c8190919f32cf21829b6de68950d573eefb826cd6775be49939"

  depends_on "node"

  def install
    bin.install "tahcia"
    bin.install "tahcia.js"
  end

  test do
    system "#{bin}/tahcia", "--help"
  end
end
