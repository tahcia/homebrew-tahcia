class Tahcia < Formula
  desc "Tahcia CLI tunnel"
  homepage "https://www.tahcia.com"
  version "1.0.17"
  url "https://github.com/tahcia/cli/releases/download/v1.0.17/tahcia.zip"
  sha256 "2531fbaad9c2cf3d65dafc2c89c725b646fc3bd4cf23d80347c333624f6e5bae"

  depends_on "node"

  def install
    bin.install "tahcia"    
    bin.install "tahcia.js"
    bin.install "tahcia-antigravity.py"
    bin.install "kokoro.py"
    bin.install "tahcia-mac"
  end

  test do
    system "#{bin}/tahcia", "--help"
  end
end
