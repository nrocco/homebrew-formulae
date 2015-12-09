class Consume < Formula
  desc "wrapper around HTTPie for friendly rest api consumption"
  homepage "http://nrocco.github.io"
  url "https://github.com/nrocco/consume/archive/1.1.3.tar.gz"
  version "1.1.3"
  sha256 "ff7ea7c73ab18382ed6b052122f0918c60855422a5be320b95170ffcfcd6cbd2"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "false"
  end
end
