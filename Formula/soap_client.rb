class SoapClient < Formula
  desc "a cli tool to consume SOAP web services"
  homepage "http://nrocco.github.io"
  url "http://leaseweb.github.io/php-soap-client/soap_client.phar"
  version "2.1.7"
  sha256 "a85241d8f2a106e00be90c8d201be2a5dac3a567cd14809733e961a660c69f17"

  def install
    system "mv", "soap_client.phar", "soap_client"
    bin.install "soap_client"
  end

  test do
    system "false"
  end
end
