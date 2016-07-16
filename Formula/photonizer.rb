class Photonizer < Formula
  desc "a command line tool to organize photos using plain files and folders."
  homepage "http://nrocco.github.io"
  url "https://github.com/nrocco/photonizer/archive/0.3.0.tar.gz"
  version "0.3.0"
  sha256 "7b530dc2f04e97fe985c40b13abcd9923211eb2235eb57d3207ac2db2128aa57"

  depends_on :python3

  resource "pycli_tools" do
    url "https://pypi.python.org/packages/78/ef/9a4133c6625d844f53fa7a9a2945a800dd1eebc551831f0b90373bae555b/pycli_tools-2.0.2.tar.gz"
    sha256 "6ffafa63d24969510b16d5861ea01572b06de2531751f9b59237054c7c8b3e5b"
  end

  resource "pyexiftool" do
    url "https://github.com/smarnach/pyexiftool/archive/v0.2.0.tar.gz"
    sha256 "6212a925018b9fe771e336f8ef6e0ab54720bd48c801d104ae17c8a77ba784d9"
  end

  resource "pillow" do
    url "https://pypi.python.org/packages/e0/27/f61098a12f14690689924de93ffdd101463083a80bf8ff3e0c218addf05b/Pillow-3.3.0.tar.gz"
    sha256 "031e7c9c885a4f343d1ad366c7fd2340449dc70318acb4a28d6411994f0accd1"
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
