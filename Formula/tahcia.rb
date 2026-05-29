class Tahcia < Formula
  desc "Tahcia CLI tunnel"
  homepage "https://www.tahcia.com"
  version "1.0.9"
  url "https://github.com/tahcia/cli/releases/download/v1.0.9/tahcia.zip"
  sha256 "07a4073e833c10c856415464363702c3b795604b1cec95322acd4b84a3010864"

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
