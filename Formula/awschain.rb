# This file was generated by GoReleaser. DO NOT EDIT.
class Awschain < Formula
  desc "awschain is set current AWS* environment variables to envchain namespace."
  homepage "https://github.com/tatsuo48/awschain"
  version "0.1.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/tatsuo48/awschain/releases/download/v0.1.3/awschain_darwin_x86_64.tar.gz"
    sha256 "3aa1741ebabe6100b26868baf7b1468071a12a5660c310f20a78e8fc7dc42ec7"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/tatsuo48/awschain/releases/download/v0.1.3/awschain_linux_x86_64.tar.gz"
      sha256 "f2fa207b8786f1117b33478bad3931c5a7e083f19f4de66a319cb99ae713d2ed"
    end
  end

  def install
    bin.install "awschain"
  end

  test do
    system "#{bin}/awschain", "-v"
  end
end
