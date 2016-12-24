class Ide < Formula
  desc "ide provides a powerful ide that gets out of your way"
  homepage "https://github.com/nrocco/ide"
  head "https://github.com/nrocco/ide.git"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "false"
  end
end
