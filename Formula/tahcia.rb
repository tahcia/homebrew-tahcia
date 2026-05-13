class Tahcia < Formula
  desc "Tahcia CLI tunnel"
  homepage "https://www.tahcia.com"
  version "1.0.1"
  url "https://github.com/tahcia/cli/releases/download/v1.0.4/tahcia.zip"
  sha256 "408f8f618faefa40d8b76bb99e4e6715395dce58732da43aaae1f6bbe7054175"

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
