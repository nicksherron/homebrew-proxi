class Proxi < Formula
  desc "Scrapes, checks and stores proxies with a rest api for querying results."
  homepage ""
  version "0.1.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nicksherron/proxi/releases/download/v0.1.2/proxi_v0.1.2_darwin_amd64.tar.gz"
    sha256 "3772ebe5220deb3c8c9bc70aa211b75b43517e06b8c6c11228883bbf18a1afed"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nicksherron/proxi/releases/download/v0.1.2/proxi_v0.1.2_linux_amd64.tar.gz"
      sha256 "71ab70fdf7fd8ab31f029cc2ca777e48e61275dd44b0f95dc0ee599c3a2fa6a8"
    end
  end

  def install
    bin.install "proxi"
  end

  test do
    system "#{bin}/proxi version"
  end
end
