class Tahcia < Formula
  desc "Tahcia CLI tunnel"
  homepage "https://www.tahcia.com"
  version "1.0.1"
  url "https://github.com/tahcia/cli/releases/download/v1.0.1/tahcia.zip"
  sha256 "6dc9f947fef631954be3f4203eef07d5b8ed162c257cf040b16fa45253629dcf"

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
