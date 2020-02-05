class Proxi < Formula
  desc "Scrapes, checks and stores proxies with a rest api for querying results."
  homepage ""
  version "0.1.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nicksherron/proxi/releases/download/v0.1.6/proxi_v0.1.6_darwin_amd64.tar.gz"
    sha256 "dd2193494914371ac53a09cbbae13eeecb2c706b7661d67b7c1feaeea26f50e2"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nicksherron/proxi/releases/download/v0.1.6/proxi_v0.1.6_linux_amd64.tar.gz"
      sha256 "7451ee0eb1d5ff7ffba2b79a1ec38ea6d9e0727af649683c321bf886b8c07eab"
    end
  end

  def install
    bin.install "proxi"
  end

  test do
    system "#{bin}/proxi version"
  end
end
