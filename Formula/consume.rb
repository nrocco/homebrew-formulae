class Consume < Formula
  desc "wrapper around HTTPie for friendly rest api consumption"
  homepage "http://nrocco.github.io"
  url "https://github.com/nrocco/consume/archive/1.1.2.tar.gz"
  version "1.1.2"
  sha256 "11661f2ebd891ff72cd062427beeffa577f19cfde27f02a11eabcdf92ce25c23"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "false"
  end
end
