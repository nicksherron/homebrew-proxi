class Proxi < Formula
  desc "Scrapes, checks and stores proxies with a rest api for querying results."
  homepage ""
  version "0.1.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/nicksherron/proxi/releases/download/v0.1.3/proxi_v0.1.3_darwin_amd64.tar.gz"
    sha256 "37da6119e1af3a933415f47b765a34eb6b878daf70b5c1c5e0af73ab294a63eb"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/nicksherron/proxi/releases/download/v0.1.3/proxi_v0.1.3_linux_amd64.tar.gz"
      sha256 "9670759e631f79d2c29e863cdaff20145a0c2a6954784df00c2906748202232b"
    end
  end

  def install
    bin.install "proxi"
  end

  test do
    system "#{bin}/proxi version"
  end
end
