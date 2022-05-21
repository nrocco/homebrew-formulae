class Ide < Formula
  desc "Powerful ide that gets out of your way"
  homepage "https://github.com/nrocco/ide"
  url "https://github.com/nrocco/ide/releases/download/v0.9.16/ide-v0.9.16-darwin-amd64.tar.gz"

  version "0.9.16"

  sha256 "89366aec890b60e4e528809da93fb68985fa3d90a9770a130b53335ef1c94af1"

  depends_on "git"
  depends_on "universal-ctags"

  def install
    bin.install "bin/compare"
    bin.install "bin/ide"
    bin.install "bin/linter"
    bin.install "bin/rgit"

    zsh_completion.install "completion.zsh" => "_ide"
  end

  test do
    assert_match "Version: #{version}", shell_output("#{bin}/ide version")
  end
end
