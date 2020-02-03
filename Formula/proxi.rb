class Proxi < Formula
  desc "Scrapes, checks and stores proxies with a rest api for querying results."
  homepage ""
  version "0.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nicksherron/proxi/releases/download/v0.1.1/proxi_v0.1.1_darwin_amd64.tar.gz"
    sha256 "71cba7e0e5ed0d1c66ed172fe284d50e9e86f71b6b9a81a83f26a980beb9bbb7"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nicksherron/proxi/releases/download/v0.1.1/proxi_v0.1.1_linux_amd64.tar.gz"
      sha256 "69bad08754bfc917d9236d93ec8d10294e686104a933a9c8e1ee23fc0faf244c"
    end
  end

  def install
    bin.install "proxi"
  end

  test do
    system "#{bin}/proxi version"
  end
end
