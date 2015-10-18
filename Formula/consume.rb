class Consume < Formula
  desc "wrapper around HTTPie for friendly rest api consumption"
  homepage "http://nrocco.github.io"
  url "https://github.com/nrocco/consume/archive/1.1.1.tar.gz"
  version "1.1.1"
  sha256 "5db9b46c9d6e4edf76520ef48ffa1201edbf78f98f6e276df50f82c876ff1232"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "false"
  end
end
