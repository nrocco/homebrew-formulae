class Consume < Formula
  desc "wrapper around HTTPie for friendly rest api consumption"
  homepage "http://nrocco.github.io"
  url "https://github.com/nrocco/consume/archive/1.2.0.tar.gz"
  version "1.2.0"
  sha256 "bbf9a7a52b13aee55ada1ba4421b145733d88b883f9e1a67a29e0bc62720f2d9"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "false"
  end
end
