class Tahcia < Formula
  desc "Tahcia CLI tunnel"
  homepage "https://www.tahcia.com"
  version "1.0.11"
  url "https://github.com/tahcia/cli/releases/download/v1.0.11/tahcia.zip"
  sha256 "6f32b3c48816832016d440dd08311498c3d678c281d29bc16653109accf1d20e"

  depends_on "node"

  def install
    bin.install "tahcia"    
    bin.install "tahcia.js"
    bin.install "tahcia-mac"
  end

  test do
    system "#{bin}/tahcia", "--help"
  end
end
