class Tahcia < Formula
  desc "Tahcia CLI tunnel"
  homepage "https://www.tahcia.com"
  version "1.0.12"
  url "https://github.com/tahcia/cli/releases/download/v1.0.12/tahcia.zip"
  sha256 "90bcec7e9706bc3b5414a4d7dbd82197753effe582d7f66b0de4aa7a85615c69"

  depends_on "node"

  def install
    bin.install "tahcia"    
    bin.install "tahcia.js"
    bin.install "tahcia-antigravity.py"
    bin.install "tahcia-mac"
  end

  test do
    system "#{bin}/tahcia", "--help"
  end
end
