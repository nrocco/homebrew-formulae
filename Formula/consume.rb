class Consume < Formula
  desc "wrapper around HTTPie for friendly rest api consumption"
  homepage "https://github.com/nrocco/consume"
  head "https://github.com/nrocco/consume.git"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "false"
  end
end
