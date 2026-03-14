class Tahcia < Formula
  desc "Tahcia CLI tunnel"
  homepage "https://www.tahcia.com"
  version "1.0.0"
  url "https://github.com/tahcia/cli/releases/download/v1.0/tahcia.zip"
  sha256 "57a7f04e212b013d822fcc6bf535734bea6f4602011713c7c1f74fda0fa59f11"

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
