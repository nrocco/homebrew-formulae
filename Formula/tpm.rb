class Tpm < Formula
  desc "A Team Password Manager client written in go"
  homepage "https://github.com/nrocco/tpm"
  url "https://github.com/nrocco/tpm/releases/download/v2.0.0-rc5/tpm-v2.0.0-rc5-darwin-amd64.tar.gz"
  version "v2.0.0-rc5"

    
  sha256 "f3138389cc30539de60f0b1cdb7e4e64c268badb9135cfff29f3149457f0428d"

  def install
      bin.install "tpm"
      zsh_completion.install "completion.zsh" => "_tpm"
  end

  test do
    system "false"
  end
end
