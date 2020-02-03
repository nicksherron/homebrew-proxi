class Proxypool < Formula
  desc "Scrapes, checks and stores proxies with a rest api for querying results."
  homepage ""
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nicksherron/proxi/releases/download/v0.1.0/proxi_v0.1.0_darwin_amd64.tar.gz"
    sha256 "6589e990260685cb9dcb81d32d72391fff501b23a6e2ae3cd2fd281c6027ae5c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nicksherron/proxi/releases/download/v0.1.0/proxi_v0.1.0_linux_amd64.tar.gz"
      sha256 "10967038507ced94f9547058e94e7bfba51042c9b7c3ee56b2937443d6655670"
    end
  end

  def install
    bin.install "proxi"
  end

  test do
    system "#{bin}/proxi version"
  end
end
