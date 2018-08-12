class SoapClient < Formula
  desc "a cli tool to consume SOAP web services"
  homepage "http://nrocco.github.io"
  url "https://github.com/LeaseWeb/php-soap-client/releases/download/3.0.0/soap_client.phar"
  version "3.0.0"
  sha256 "bc373d8fab71914c2452f198b983ede03c362cd86cd1d6095c641330a27aedd9"

  def install
    system "mv", "soap_client.phar", "soap_client"
    bin.install "soap_client"
  end

  test do
    system "false"
  end
end
