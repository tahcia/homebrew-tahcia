class Tahcia < Formula
  desc "Tahcia CLI tunnel"
  homepage "https://www.tahcia.com"
  version "1.0.6"
  url "https://github.com/tahcia/cli/releases/download/v1.0.7/tahcia.zip"
  sha256 "09a2e0d128ef2f6a1d1809f8e7b8c9f2080193fd7e6bad8e4e506c9a242e0d63"

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
