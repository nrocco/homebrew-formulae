class Consume < Formula
  desc "wrapper around HTTPie for friendly rest api consumption"
  homepage "http://nrocco.github.io"
  url "https://github.com/nrocco/consume/archive/1.1.3.tar.gz"
  version "1.1.3"
  sha256 "de02de366f18c4998fb0ef2b1407d3d9cdfacc899dd802afa97d6fb70bbe6df1"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "false"
  end
end
