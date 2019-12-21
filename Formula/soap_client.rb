class SoapClient < Formula
  desc "a cli tool to consume SOAP web services"
  homepage "http://nrocco.github.io"
  url "https://github.com/LeaseWeb/php-soap-client/releases/download/3.0.2/soap_client.phar"
  version "3.0.2"
  sha256 "36c3f150e47ca150438a48acab004db3cb8a45e58b3c276084f7b54b39051431"

  def install
    system "mv", "soap_client.phar", "soap_client"
    bin.install "soap_client"
  end

  test do
    system "false"
  end
end
