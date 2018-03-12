class Ide < Formula
  desc "ide provides a powerful ide that gets out of your way"
  homepage "https://github.com/nrocco/ide"
  url "https://github.com/nrocco/ide/releases/download/0.9.10/ide-0.9.10-darwin-amd64.tar.gz"

  version "0.9.10"

  sha256 "85444f181b91550d9779918c0f013bfc7850060178785e58bf8460b889e3094c"

  def install
      bin.install "ide"
      bin.install "rgit"
  end

  test do
    system "false"
  end
end
