class Tahcia < Formula
  desc "Tahcia CLI tunnel"
  homepage "https://www.tahcia.com"
  version "1.0.6"
  url "https://github.com/tahcia/cli/releases/download/v1.0.4/tahcia.zip"
  sha256 "d4e31ff2f9a2cfd8b74b45ceb2740730de2b6f0910733e3e1dd13759ca0f7bc7"

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
