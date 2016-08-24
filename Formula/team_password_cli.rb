class TeamPasswordCli < Formula
  desc "A Team Password Manager CLI Application"
  homepage "http://nrocco.github.io"
  url "https://github.com/nrocco/team_password_cli/archive/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "016ab75745512919282ca614f065157929281ca9b956c9858ff302a211e5c2a3"

  depends_on :python3

  resource "pycli_tools" do
    url "https://pypi.python.org/packages/78/ef/9a4133c6625d844f53fa7a9a2945a800dd1eebc551831f0b90373bae555b/pycli_tools-2.0.2.tar.gz"
    sha256 "6ffafa63d24969510b16d5861ea01572b06de2531751f9b59237054c7c8b3e5b"
  end

  resource "requests" do
    url "https://pypi.python.org/packages/2e/ad/e627446492cc374c284e82381215dcd9a0a87c4f6e90e9789afefe6da0ad/requests-2.11.1.tar.gz"
    sha256 "5acf980358283faba0b897c73959cecf8b841205bb4b2ad3ef545f46eae1a133"
  end

  resource "tabulate" do
    url "https://pypi.python.org/packages/db/40/6ffc855c365769c454591ac30a25e9ea0b3e8c952a1259141f5b9878bd3d/tabulate-0.7.5.tar.gz"
    sha256 "9071aacbd97a9a915096c1aaf0dc684ac2672904cd876db5904085d6dac9810e"
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
  end

  test do
    system "false"
  end
end
