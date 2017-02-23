class TeamPasswordCli < Formula
  desc "A Team Password Manager CLI Application"
  homepage "http://nrocco.github.io"
  url "https://pypi.python.org/packages/51/c4/ffa5389298611abc6b62f058ab32a1a36e294e45402e5cecf89bdfc8cee1/team_password_cli-1.0.1.tar.gz"
  version "1.0.1"
  sha256 "9e4a7326be561af2b924afa16a6033e178005255bed7f2dfa29621f08324567f"

  depends_on :python3

  resource "click" do
    url "https://pypi.python.org/packages/95/d9/c3336b6b5711c3ab9d1d3a80f1a3e2afeb9d8c02a7166462f6cc96570897/click-6.7.tar.gz"
    sha256 "f15516df478d5a56180fbf80e68f206010e6d160fc39fa508b65e035fd75130b"
  end

  resource "requests" do
    url "https://pypi.python.org/packages/16/09/37b69de7c924d318e51ece1c4ceb679bf93be9d05973bb30c35babd596e2/requests-2.13.0.tar.gz"
    sha256 "5722cd09762faa01276230270ff16af7acf7c5c45d623868d9ba116f15791ce8"
  end

  resource "tabulate" do
    url "https://pypi.python.org/packages/1c/a1/3367581782ce79b727954f7aa5d29e6a439dc2490a9ac0e7ea0a7115435d/tabulate-0.7.7.tar.gz"
    sha256 "83a0b8e17c09f012090a50e1e97ae897300a72b35e0c86c0b53d3bd2ae86d8c6"
  end

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"vendor/lib/python3.6/site-packages"
    resources.each do |r|
      r.stage do
        system "python3", *Language::Python.setup_install_args(libexec/"vendor")
      end
    end

    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python3.6/site-packages"
    system "python3", *Language::Python.setup_install_args(libexec)

    bin.install Dir["#{libexec}/bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end

  test do
    system "false"
  end
end
