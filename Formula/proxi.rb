class Proxi < Formula
  desc "Scrapes, checks and stores proxies with a rest api for querying results."
  homepage ""
  version "0.1.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nicksherron/proxi/releases/download/v0.1.4/proxi_v0.1.4_darwin_amd64.tar.gz"
    sha256 "be4f940ab243624919a28c1b57b4e2ec8326a1b0885ffc0655e9777b68e818c5"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nicksherron/proxi/releases/download/v0.1.4/proxi_v0.1.4_linux_amd64.tar.gz"
      sha256 "fc11e0d092ada8b1c02e942eb70c6d3ac6be890e2ab81bbb8f1927669ed2a1da"
    end
  end

  def install
    bin.install "proxi"
  end

  test do
    system "#{bin}/proxi version"
  end
end
