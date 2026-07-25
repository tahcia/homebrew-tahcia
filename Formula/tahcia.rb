class Tahcia < Formula
  desc "Tahcia CLI tunnel"
  homepage "https://www.tahcia.com"
  version "1.0.11"
  url "https://github.com/tahcia/cli/releases/download/v1.0.11/tahcia.zip"
  sha256 "173c9dd22538246845c1b7d771f25f0179a130ea36b5a89e1a49d510dc15946a"

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
