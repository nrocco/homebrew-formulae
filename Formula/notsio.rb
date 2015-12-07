class Notsio < Formula
  desc "Manage notes and bookmarks from the command line."
  homepage "http://nrocco.github.io"
  url "https://github.com/nrocco/notsio-cli/archive/ocrestapi.zip"
  version "0.6.1-restapi"
  sha256 "08e92fb5b064624cef00a9014e46423fc62a76aa44f6d34cbc3633d025edd3fb"

  depends_on :python3

  resource "pygments" do
    url "https://pypi.python.org/packages/source/P/Pygments/Pygments-2.0.2.tar.gz"
    sha256 "7320919084e6dac8f4540638a46447a3bd730fca172afc17d2c03eed22cf4f51"
  end

  resource "requests" do
    url "https://pypi.python.org/packages/source/r/requests/requests-2.6.0.tar.gz"
    sha256 "1cdbed1f0e236f35ef54e919982c7a338e4fea3786310933d3a7887a04b74d75"
  end

  resource "pycli_tools" do
    url "https://pypi.python.org/packages/source/p/pycli_tools/pycli_tools-2.0.2.tar.gz"
    sha256 "6ffafa63d24969510b16d5861ea01572b06de2531751f9b59237054c7c8b3e5b"
  end

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"vendor/lib/python3.5/site-packages"
    resources.each do |r|
      r.stage do
        system "python3", *Language::Python.setup_install_args(libexec/"vendor")
      end
    end

    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python3.5/site-packages"
    system "python3", *Language::Python.setup_install_args(libexec)
    bin.install Dir["#{libexec}/bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])

    zsh_completion.install "contrib/completion.zsh" => "_notsio"
  end

  test do
    system "false"
  end
end
