class Tahcia < Formula
  desc "Tahcia CLI tunnel"
  homepage "https://www.tahcia.com"
  version "1.0.10"
  url "https://github.com/tahcia/cli/releases/download/v1.0.10/tahcia.zip"
  sha256 "3fdd020dd0c7ea1e68bee9d85f67b903ce5ab9480b9e8215755c2e962e9ad51e"

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
