class Tahcia < Formula
  desc "Tahcia CLI tunnel"
  homepage "https://www.tahcia.com"
  version "1.0.0"
  url "https://github.com/tahcia/cli/releases/download/v1.0/tahcia.zip"
  sha256 "91b770503a70a372b394b020432ac0fa3f8bf06fa11488ad3686c31816d4acbc"

  depends_on "node"

  def install
    bin.install "tahcia"
    bin.install "tahcia.js"
  end

  test do
    system "#{bin}/tahcia", "--help"
  end
end
